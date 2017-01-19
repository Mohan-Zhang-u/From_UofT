CC = gcc
CFLAGS = -Wall -g -std=c99
# all: questions qtree categorizer

qall:
	$(CC) $(CFLAGS) write_test_file.c -o w
	./w test.txt
	$(CC) $(CFLAGS) time_reads.c -o t

clean:  
	rm test1 test2 categorizer