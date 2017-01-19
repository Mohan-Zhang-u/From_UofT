#include <stdio.h>

int main() {
	int i = 558580545;
	char name[] = "Mohan Zhang\n";
	FILE * fp;
	int len = strlen(name);
   fp = fopen ("outputFile", "w");
   fprintf(fp,"%d\n",i);
   fwrite(&i , sizeof(int) , 1 , fp );
   fclose(fp);
  	
  	fp = fopen ("nameFile", "w");
   fwrite(name , sizeof(char) , len, fp);
   fclose(fp);
   
   fp = fopen ("nameFile", "r");
   char to_be_print[len];
   int four;
   four =fread(to_be_print,sizeof(char), len, fp);
   if (four!=len){
   	printf("not successfully read 4 ints !// %d",four);
   	return 1;
   }
	printf("the four ints are:\n");
   for(int ii = 0; ii<len; ii++){
   	
   	printf("%d\n",to_be_print[ii]);
   }
   fclose(fp);
    return 0;
}
