#ifndef OUTFILE_H
#define OUTFILE_H

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <dirent.h> 
#include <stdio.h> 
#include <unistd.h>

int open_files(char * input_file_dir);
int *dest_arr(int ** src_arr, int size_src);
int sub_arr_location(char * sub_arr);
int count_all(FILE *fp,int *arrs);

//test
void dna_seq_gen(int ** src_arr, int size_src);
void print_final(int ** src_arr, int size_src);
#endif
