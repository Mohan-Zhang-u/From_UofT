#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/types.h>

int main(int argc, char **argv) {

	int i;
	int n;
	int num_kids;
	int j=0;

	if(argc != 2) {
		fprintf(stderr, "Usage: forkloop <numkids>\n");
		exit(1);
	}

	num_kids = atoi(argv[1]);
	int status;
	for(i = 0; i < num_kids; i++) {
		n = fork();
		if(n < 0) {
			perror("fork");
			exit(1);
		}
 		printf("pid = %d, ppid = %d, i = %d\n", getpid(), getppid(), i);

	}
		for(int k=0;k<(num_kids-j);k++){
 		wait(&status);
	}

	return 0;
}
