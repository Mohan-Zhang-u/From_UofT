#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <time.h>
#include <errno.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/time.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <sys/signal.h>
#include <getopt.h>

typedef struct client {
int fd; //file descriptor to write into and to read from 
int *answers;
//before user entered a name, he cannot issue commands
int status;
/* case status:
	0 just finished impliment (just finished typing in name)
	1 entered get_all, but haven't finished anwering questions
	2 all questions replied.
*/
char name [MAX_NAME];
char buf [BUFFER_SIZE]; // each client has its own buffer int inbuf; // and a pointer to the current end-of-buf position struct client *next;
} Client;



int drop_client(Client * cl){
	/*returns 0 if suseccesfully drop the client. perror otherwise.*/

	return 0;

}

int add_client(fd, r.sin_addr){
	/* add client to the link list.
	returns 0 if suseccesfully added the client. perror otherwise.**/
	return 0;
}
//XDD
static void addclient(int fd,struct in_addr addr ){
    Client *p=malloc(sizeof(Client));
    p->fd=fd;
    p->ipaddr=addr;
    p->next = top;
    top=p;
}




