#include <ctype.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/un.h>
#include "qtree.h"
#define port 30001

void print_greetings();
int validate_user(char *name);
int validate_answer(char *answer);
void wrap_up();
void print_friends(Node *list, char *name);

QNode *root = NULL;
int answer_tree_length=0;    
Node *interests = NULL;

char *user_prompt = "Please enter your name. Type 'q' to quit\n";
char *question_prompt = "Do you like %s? (y/n)\n";
char *neg_result = "Sorry, no users with similar interests joined yet\n\n";
char *pos_result1 = "friend recommendation for user %s:\n";
char *pos_result2 = "You have total %d potential friend(s)!!!\n\n";


static int listenfd;
typedef struct client{// client linked list 
    int fd;//file descriptor to read and write
    //int answers;
    int state;//whether user answers the questions or not
    char name[MAX_LINE];
    struct in_addr ipaddr;//ip address
    char buf[BUFFER_SIZE];//each client has its own buffer
    int inbuf;// a pointer to the current end of buf position
    struct client *next;

}Client;
Client top = NULL;//the client on the top
static void addclient(int fd);
void bindandlisten();


int main (int argc, char **argv) {
    
    char answer[MAX_LINE];    
    char name[MAX_LINE];

    if (argc < 2) {
        printf ("To run the program ./categorizer <name of input file>\n");
        return 1;
    }
    
    // read interests from file
    interests = get_list_from_file (argv[1]);
    
    if (interests == NULL)
        return 1;

    // build question tree
    root = add_next_level (root, interests);
    answer_tree_length+=1;
    //main application loop
    for (; ;){
        print_greetings();

        // read user name    
        printf("%s", user_prompt);
        scanf("%s", name);
    
        // user entered "q" instead of a user name
        if (strcmp(name, "q") == 0 || strcmp(name, "Q") == 0) 
            wrap_up();
        
        // if user name is not valid, continue to loop
        if (!validate_user(name))
            continue;
        
        // check whether the user with this name already exists
        Node *user_list = find_user(root, name);
        //users with reversed answers
        Node *user_list2 = find_user(root, name);

        // find_user_according_to_reversed_answer(not providing answer yet)
        if (answer_tree_length){
            //useless
        }

        
        Node *user_list3 = find_user_according_to_reversed_answer(root, name);
        
        // cannot find a user inside user_list.
        if (!user_list){
            // find the list of friends to which the user should be attached
            QNode *prev, *curr;
            prev = curr = root;

            // find the list of friends has exactly reversed answer
            QNode *prev2, *curr2;
            prev2 = curr2 = root;

            // iterate over list of interests
            Node *i = interests;
            int ans;
            while (i){
                printf(question_prompt, i->str);
                
                // read answer to prompt
                scanf("%s", answer);
                ans = validate_answer(answer);
                
                // if answer if not valid, continue to loop
                if (ans == 2)
                    continue;
                    
                prev = curr;

                //added
                prev2 = curr2;

                curr = find_branch(curr, ans);

                //added
                curr2 = find_branch2(curr2, ans);

                i = i->next;
            }
            
            // add user to the end of the list
            user_list = prev->children[ans].fchild;
            prev->children[ans].fchild = add_user(user_list, name);

            // user_list2 is the final reversed answer
            user_list2 = prev2->children[1-ans].fchild;
            print_friends(user_list2, name);
        }
        else{
            //there, we can find entered user in the tree.
            // print list of potential friends
            print_friends(user_list3, name);
            } 
    }
    
    return 0;
}

void print_greetings () {
    printf ("----------------------------------------------\n");
    printf ("Friend recommender system. Find people who are just like you!\n");
    printf ("CSC209 fall 2016 team. All rights reserved\n");
    printf ("----------------------------------------------\n");
}

void wrap_up(){
    //end of main loop - the user typed "q"
    print_qtree (root, 0);
    
    free_list (interests);
    free_qtree(root);
    
    exit(0);
}

int validate_user(char *name){
    int valid = 1;
    
    int len = strlen(name);
    if (len < 8 || len > 128)
        valid = 0;
    
    for (int i = 0; i < len; i++){
        if (!isalnum(name[i])){
            valid = 0;
            break;
        }
    }

    if (!valid)
        fprintf(stderr, "ERROR: User name must be at least 8 and at most "
            "128 characters, and can only contain alphanumeric "
            "characters.\n\n");

    return valid;
}

int validate_answer(char *answer){
    char *invalid_message = "ERROR: Answer must be one of 'y', 'n', 'q'.\n";
    
    if (strlen(answer) > 3){
        printf("%s", invalid_message);
        return 2;
    }
    
    if (answer[0] == 'q' || answer[0] == 'Q')
        wrap_up();
        
    if (answer[0] == 'n' || answer[0] == 'N')
        return 0;
        
    if (answer[0] == 'y' || answer[0] == 'Y')
        return 1;
        
    printf("%s", invalid_message);
    return 2;
}

// print list of potential friends for user
void print_friends(Node *list, char *name){
    int friends = 0;

    // iterate over user list and count the number of friends
    while (list) {
	// ignore this user
        if (strcmp(list->str, name)) {
            friends++;
             
	    // if this is the first friend found, print successful message    
            if (friends == 1)
                printf(pos_result1, name);
            
	    // if friend was found, print his/her name
            printf("%s, ", list->str);
        }
            
        list = list->next;
    }
    
    // if friends were found, print the number of friends    
    if (friends){
        printf("\n");
        printf(pos_result2, friends);
        
    } else {
        printf("%s", neg_result);    
    }
}

static void addclient(int fd,struct in_addr addr ){
    Client *p=malloc(sizeof(Client));
    p->fd=fd;
    p->ipaddr=addr;
    p->next = top;
    top=p;
}

void bindandlisten()  /* bind and listen, abort on error */
{
    struct sockaddr_in r;

    if ((listenfd = socket(AF_INET, SOCK_STREAM, 0)) < 0) {
    perror("socket");
    exit(1);
    }

    memset(&r, '\0', sizeof r);
    r.sin_family = AF_INET;
    r.sin_addr.s_addr = INADDR_ANY;
    r.sin_port = htons(port);

    if (bind(listenfd, (struct sockaddr *)&r, sizeof r)) {
    perror("bind");
    exit(1);
    }

    if (listen(listenfd, 5)) {
    perror("listen");
    exit(1);
    }
}
