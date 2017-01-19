#include <stdio.h>
#include <strings.h>
//fill it with 100 ints.
int main(int argc, char * argv[]) {	
	char * filename = argv[1];
	FILE * fp;
	fp = fopen(filename, "w");	
	int x;
	int i;
	for( i = 0; i < 100; i++) {
		x = random() % 100;
		fwrite(&x, sizeof(int), 1, fp);
		
	}
	return 0;
}