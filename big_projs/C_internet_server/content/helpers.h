#ifndef HELPERS_H
#define HELPERS_H
#include "qtree.h"

typedef struct client{// client linked list 
    int fd;//file descriptor to read and write
    //int answers;
    int status;
	/* case status:
		0 just finished impliment (just finished typing in name)
		1 entered get_all, but haven't finished anwering questions
		2 all questions replied.
	*/
    char name[MAX_LINE];
    struct in_addr ipaddr;//ip address
    char buf[BUFFER_SIZE];//each client has its own buffer
    int inbuf;// a pointer to the current end of buf position
    struct client *next;

}Client;

#endif
