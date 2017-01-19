#include <stdio.h>
#include <strings.h>
#include <stdlib.h>

int main(int argc, char * argv[]) {

	//init all nessesaries needed in while here.
	char * filename = argv[1];
	FILE * fp;
	fp = fopen(filename, "rb");	
	int i;

	int readed;
	while (fread( & readed, sizeof(int), 1, fp)==1){
		printf("%d\n",readed);
	}

	// while(1){

	// 	i = random() % 100;
	// 	fseek(fp, i, SEEK_SET);
	// 	fread(&readed,  1,sizeof(int), fp);
	// 	printf("random int is:%d\n",readed);
	// }

	fclose(fp);
	return 0;
}