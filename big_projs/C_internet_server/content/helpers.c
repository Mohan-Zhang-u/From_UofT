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
#include "helpers.h"

static void add_client(int fd,struct in_addr addr ){
	/* add client to the link list.*/
    Client *p=malloc(sizeof(Client));
    p->fd=fd;
    p->ipaddr=addr;
    p->next = top;
    top=p;
}

static void remove_client(int fd)
{
    struct client **p;
    for (p = &top; *p && (*p)->fd != fd; p = &(*p)->next)
	;
    if (*p) {
	struct client *t = (*p)->next;
	printf("Removing client %s\n", inet_ntoa((*p)->ipaddr));
	fflush(stdout);
	free(*p);
	*p = t;
	howmany--;
    } else {
	fprintf(stderr, "Trying to remove fd %d, but I don't know about it\n", fd);
	fflush(stderr);
    }
}