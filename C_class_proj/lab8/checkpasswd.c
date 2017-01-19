#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

/* Read a user id and password from standard input, 
   - create a new process to run the validate program
   - send 'validate' the user id and password on a pipe, 
   - print a message 
        "Password verified" if the user id and password matched, 
        "Invalid password", or 
        "No such user"
     depending on the return value of 'validate'.
*/


int main(void) {
    char userid[10];
    char password[10];
    int fd[2];

    /* Read a user id and password from stdin */
    printf("User id:\n");
    scanf("%s", userid);
    printf("Password:\n");
    scanf("%s", password);

    if (pipe(fd) == -1) {
        perror("pipe");
    }

    int r = fork();

    if (r > 0) {
        close(fd[0]);
        if (write(fd[1],userid, 10) == -1) {
                perror("write to pipe");
            }
        if (write(fd[1],password, 10) == -1) {
                perror("write to pipe");
            }
    exit(0);
    }

    if (r == 0) {
        if (dup2(fd[0],fileno(stdin)) == -1) {
            perror("dup2");
            exit(1);
        }
        if (execlp("./validate","./validate",NULL)==-1){
            perror("execlp");
        }
    }

    
    return 0;
}
