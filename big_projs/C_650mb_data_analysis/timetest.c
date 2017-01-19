#include <sys/time.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
#include <time.h>

int main(int argc, char const *argv[])
{
    
    for (int num_p = 1; num_p < 31; ++num_p)
    {
        struct timeval starttime, endtime;
        double timediff;

        char n_arg[3];
        sprintf(n_arg, "%d", num_p);

        gettimeofday(&starttime, NULL);

        if (!fork())
        {
            execlp("./freq5", "./freq5", "-d", "/Users/zhangmohan/Desktop/CSC209/dna650MB/", "-n", n_arg, NULL);
        }
        else
        {
            wait(NULL);
            gettimeofday(&endtime, NULL);
            timediff = (endtime.tv_sec - starttime.tv_sec) + (endtime.tv_usec - starttime.tv_usec) / 1000000.0;
            fprintf(stderr, "Time span for running with %d process(es): %.4f\n", num_p, timediff);
        }
    }

    return 0;
}