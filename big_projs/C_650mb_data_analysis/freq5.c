#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>  
#include <getopt.h>
#include "outfile.h"

#define MAXLINES = 30;

int main(int argc, char *argv[]) {
    extern char *optarg;
    int ch;
    // FILE *infp, *outfp;
    char *infile = NULL, *outfile = NULL, *num_proc = NULL;
    /* read in arguments */
    while ((ch = getopt(argc, argv, "d:n:o:")) != -1) {
        switch(ch) {
            case 'd':
                infile = optarg;
                // printf("%s\n", infile);
                break;
            case 'n':
                num_proc = optarg;
                // printf("%s\n", num_proc);
                break;
            case 'o':
                outfile = optarg;
                // printf("%s\n", outfile);
                break;
            default :
                printf("default\n");
                fprintf(stderr, "Usage: freq5 -d <input file dir> -n <number of processes> -o <output file name>\n");
                exit(EXIT_FAILURE); 
        }
    }
    // check for illegal function calls
    if (argc < 3 || infile == NULL){
        fprintf(stderr, "Usage: freq5 -d <input file dir> -n <number of processes> -o <output file name>\n");
        exit(EXIT_FAILURE); 
    }
    // check for illeage arguments
    int proc_num = atoi(num_proc);
    if (proc_num<1){
        proc_num=1;
    }

    // printf("adsfdsafdf%d\n",proc_num);
    int array_fork_value = fork();
    // child process
    if (array_fork_value==0){
        int num_of_files=open_files(infile);
        exit(num_of_files);
    }

    pid_t pid;
    int status;
    // parent process wait for child process, check error
    if( (pid = wait(&status)) == -1) {
            perror("wait");
    } 

    // file number count
    int num_of_files=WEXITSTATUS(status);


    char * buffer = 0;
    long length;
    FILE * f = fopen("touse","r");

    if(f){
        fseek(f, 0, SEEK_END);
        length = ftell(f) - 1;
        fseek(f,0,SEEK_SET);
        buffer = malloc(length);
        if (buffer)
            fread(buffer, 1, length, f);
        fclose(f);        
    }
    //printf("Print buffer %s\n", buffer);
    
    // destination char array
    char * child_processes[num_of_files];

    int ii = 0;
    if (buffer){
        for (char *token = strtok(buffer, "\n"); token != NULL; token = strtok(NULL, "\n")){
            //printf("print token %s\n", token);
            child_processes[ii] = malloc(sizeof(token));
            //printf("print child_process %s\n", child_processes[i]);
            strcpy(child_processes[ii],token);
            //printf("child_processes %s\n", child_processes[i]);
            ii++;
        }        
    }
    //a so far so good:

    //tryout
    int mul;
    int final_pro_num;
    if (num_of_files<proc_num){
        final_pro_num=num_of_files;
        mul=1;
    }
    else{
        final_pro_num=proc_num;
        mul= num_of_files/final_pro_num;
    }

    int fd[final_pro_num][2];
    int matrix[1024];
    int result;
    int final_array[final_pro_num][1024];

    //generate child process:
    for (int i=0;i<final_pro_num;i++){
        pipe (fd[i]);
        result=fork();

        //child process:
        if(result==0){

            //set matrix to 0
            close(fd[i][0]);
            for (int m=0;m<1024;m++){
                matrix[m]=0;
            }

            //set start:
            int start=mul*result;

            //child is not the last process:
            if(i!=(final_pro_num-1)){

                //set number of files to be readed:
                for (int kk=start;kk<(start+mul);kk++){
                    //add numbers to matrix.
                    char topen[256]="\0";
                    strcat(topen,infile);
                    strcat(topen,"/");
                    strcat(topen,child_processes[kk]);
                    FILE* fp = fopen(topen, "r");
                    //matrix that child use to store things.
                    count_all(fp,matrix);
                }

                // now its time to write data to pipe.
                if( write(fd[i][1], matrix, 1024*sizeof(int))<0){
                    perror("read");
                }

            }

            //last child process:
            else{

                //time the matrix to be counted.
                for (int kk=start;kk<final_pro_num;kk++){
                    //added
                    char topen[256]="\0";
                    strcat(topen,infile);
                    strcat(topen,"/");
                    strcat(topen,child_processes[kk]);
                    FILE* fp = fopen(topen, "r");
                    count_all(fp,matrix);
                }
                // now its time to write data to pipe.
                if ( write (fd[i][1], matrix, 1024*sizeof(int))<0){
                    perror("read");
                }
            }
            //after read to pipe, close.
            exit (0);
        }

        //parent process:
        else{
            close(fd[i][1]); 
        }

    }

    //after loop (read)
    for (int q = 0; q < final_pro_num; q++)
    {
        if(read(fd[q][0], final_array[q],1024*sizeof(int))<0 ){
            perror("read");
        }
    }

    // ///. there final_array[final_pro_num][1024] is the 2-dimension array to be use.
    // dna_seq_gen(final_array, final_pro_num);
    int lastarray[1024];
    for (int i = 0; i < 1024; i++){
        lastarray[i]=0;
    }
    for (int i=0;i<final_pro_num;i++){
        for (int j = 0; j < 1024; j++){
            // printf("final_array[%d][%d] is :%d\n",i,j,final_array[i][j]);
            lastarray[j]=lastarray[j]+final_array[i][j];
        }
    }


    if (outfile!=NULL){
    	FILE *fff =fopen(outfile,"w");
    	dup2(fileno(fff),1);
    }

    for (int i = 0; i < 1024; i++){
        char location[6]="\0\0\0\0\0\0";
        int num[5];
        num[0]=i/256;
        num[1]=(i%256)/64;
        num[2]=(i%64)/16;
        num[3]=(i%16)/4;
        num[4]=(i%4);
        for (int i=0;i<5;i++){
            switch(num[i]) {
                    case 0:
                        location[i]='a';
                        break;
                    case 1:
                        location[i]='c';
                        break;
                    case 2:
                        location[i]='g';
                        break;
                    case 3:
                        location[i]='t';
                        break;
                    default :
                        printf("default\n");
                        fprintf(stderr, "IN 1024!!\n");
                        exit(EXIT_FAILURE); 
            }
        }
        printf("%s,%d\n",location,lastarray[i]);
    }



        //free things
        if(buffer!=NULL){
            free(buffer);
        }
        for (int iii=0;iii<ii;iii++){
            free(child_processes[iii]);
    }

return 0;
}


