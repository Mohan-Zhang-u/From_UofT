#include "outfile.h"
#include <math.h>

int open_files(char * input_file_dir){
  DIR *d;
  d = opendir(input_file_dir);
  
  FILE * fp;
  fp = fopen ("touse", "w");
  dup2(fileno(fp),1);

  // open dir and loop through all files, and print names for all files
  int i=0;
  struct dirent *dir;
  if (d)
  {
    while ((dir = readdir(d)) != NULL)
    {	
      // check if dir name is "." or ".."
      if (strncmp(dir->d_name, ".", 1)!=0){
        printf("%s\n", dir->d_name);
        i++;
      }
    	
    }
    closedir(d);
  }
  fclose(fp);
  // return count of total number of files
  return(i);
} 


int *dest_arr(int ** src_arr, int size_src){
  // char ** dna_name_arr = dna_seq_gen();
  int *dest_ptr = malloc(sizeof(int) * 1024);
  int curr_pos = 0;
  while (curr_pos < 1024){
    //store counts of occurance to associate positions in the return array
    // dest_ptr[curr_pos] = malloc(sizeof(int));
    int count = 0;
    int i;
    //char * dna_name;
    //int * tmp_ptr_arr[1024];
    for (i = 0; i < size_src; i ++){
      // int *sub_ptr = malloc(sizeof(int)*1024);
      // sub_ptr = src_arr[i];
      // count += *(sub_ptr + curr_pos);
      // tmp_ptr_arr = *(src_arr[i]);
      // count += tmp_ptr_arr[curr_pos];
      count += src_arr[i][curr_pos];
    }

    dest_ptr[curr_pos] = count;
    //printf("%s, %d\n", (dest_ptr[curr_pos]));
    curr_pos++;
  }
  
  return dest_ptr;
}

void dna_seq_gen(int ** src_arr, int size_src){
  //get count from dest_arr()
  int * count_ptr = malloc(1024 * sizeof(int));
  memcpy(count_ptr, dest_arr(src_arr,size_src), 1024 * sizeof(int));

  // get combination of dna seq
  char char1[] = "a";
  char char2[] = "c";
  char char3[] = "g";
  char char4[] = "t";
  char * char1_ptr;
  char1_ptr = char1;

  char * char2_ptr;
  char2_ptr = char2;

  char * char3_ptr;
  char3_ptr = char3;

  char * char4_ptr;
  char4_ptr = char4;
  
  char *letters[4];

  letters[0] = char1_ptr;
  letters[1] = char2_ptr;
  letters[2] = char3_ptr;
  letters[3] = char4_ptr;
  
  char **result = malloc(sizeof(char *) * 1024); 
  //char *tmp;
  int pos = 0;
  while (pos < 1024){
    for (int i=0; i< 4; i++){
      for(int j=0; j < 4; j++){
        for(int k=0; k < 4; k++){
          for (int m=0; m<4; m++){
            for (int n = 0; n<4; n++){
              result[pos] = malloc(sizeof(char)*5);
              strcpy(result[pos],letters[i]);
              strcat(result[pos], letters[j]);
              strcat(result[pos], letters[k]);
              strcat(result[pos], letters[m]);
              strcat(result[pos], letters[n]);
              printf("%s, %d\n", result[pos], count_ptr[pos]);
              pos ++;
              //printf("%d\n", pos);
            }
          }
        }
      }
    }
  }

  //free memory
  free(count_ptr);
  for (int i = 0; i < 1024; i++)
    free(result[i]);
  free(result);
}
 
// void print_final(int ** src_arr, int size_src){
//   int dest[1024] = dest_arr(src_arr, size_src);
//   //get all possible combinations according to alphabetical order
//   char * dna_seq[1024] = dna_seq_gen();
//   for (int i = 0; i < 1024; i++){
//     printf("%s, %d\n", dna_seq[i], dest[i]);
//   }
// }

int sub_arr_location(char * sub_arr){
  int v=0;
  for (int i=0;i<5;i++){
    switch(sub_arr[i]){
      case 'a':
        v+=0;
        break;
      case 'A':
        v+=0;
        break;
      case 'c':
        v+= (int) pow(4,4-i);
        break;
      case 'C':
        v+= (int) pow(4,4-i);
        break;
      case 'g':
        v+= 2 * ( (int) pow(4,4-i) );
        break;
      case 'G':
        v+= 2 * ( (int) pow(4,4-i) );
        break;
      case 't':
        v+= 3 * ( (int) pow(4,4-i) );
        break;
      case 'T':
        v+= 3 * ( (int) pow(4,4-i) );
        break;
    }
  }
  return v;
}

// change the int*[1024] counted accroding to the fp.
//if success, return 0.
int count_all(FILE *fp,int *arrs){
  char ch;
  char sub_arr[6] = "\0\0\0\0\0\0";
  while((ch = getc(fp)) != EOF)
  {
      if (ch=='a'||
          ch=='A'||
          ch=='c'||
          ch=='C'||
          ch=='g'||
          ch=='G'||
          ch=='t'||
          ch=='T'){
          if(strlen(sub_arr)!=5){
              sub_arr[strlen(sub_arr)]=ch;
              if (strlen(sub_arr)==5){
                  arrs[sub_arr_location(sub_arr)]+=1;
              }
          }
          else{
              for (int l=1;l<5;l++){
                  sub_arr[l-1]=sub_arr[l];
              }
              sub_arr[4]=ch;
              sub_arr[5]='\0';
              arrs[sub_arr_location(sub_arr)]+=1;
          }
      }
      else{
          for (int y=0;y<6;y++){
              sub_arr[y]='\0';
          }
      }
  }
  fclose(fp);
  return 0;
}

