#include  <stdio.h>                                                                                                    
#include  <sys/types.h>
#include <unistd.h>


int  main()
{
     pid_t  ret_val;
     printf("\nThe process id is: %d\n",getpid());

     ret_val = fork();
     if(ret_val<0)
     {
       printf("\nFork Failed\n");  //fork has failed
     }
     else if(ret_val == 0)
     {
       printf("\nChild Process\n");  //child process
       printf("The process id is %d\n",getpid());
       sleep(20);
     }
     else
     {
       //parent process
       wait(NULL);
       printf("\nParent Process\n");   printf("The process id is %d\n",getpid());
       sleep(30);
     }
}
