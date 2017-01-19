CC = gcc
CFLAGS = -Wall -std=c99 -g

categorizer: 
	$(CC) $(CFLAGS) qtree.c questions.c categorizer.c -o categorizer

muffinman:
	$(CC) $(CFLAGS) muffinman.c -o muffinman

tcpserver:
	$(CC) $(CFLAGS) tcpserver.c -o tcpserver

clean:  
	rm categorizer muffinman
