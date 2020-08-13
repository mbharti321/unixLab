#include  <stdio.h> 
#include  <sys/types.h>
#include <unistd.h>


int  main()
{
     pid_t  ret_val;
 //    printf("\nThe process id is: %d\n",getpid());

     ret_val = fork();
     if(ret_val<0)
     {
       printf("\nFork Failed\n");  //fork has failed
     }
     else if(ret_val == 0)
     {
       printf("\nChild Process\n");  //child process
       printf("The process id is %d\n",getpid());
       int n, i;
       int fact = 1;
       printf("Enter an integer: ");
       scanf("%d", &n);

    // shows error if the user enters a negative integer
        if (n < 0)
           printf("Error! Factorial of a negative number doesn't exist.");
        else {
           for (i = 1; i <= n; ++i) {
               fact *= i;
          }
        printf("Factorial of %d = %d", n, fact);
       }

       //sleep(20);
     }
     else
     {
       //parent process
       wait();
       printf("\nParent Process\n");   
       printf("The process id is %d\n",getpid());
       int start,finish;
 
      printf(" Enter the range of Number:");
      scanf("%d%d", &start,&finish);
      while(start<=finish)
      {
      int i=1;
      printf("Multiplication table of %d:\n ", start);
      printf("--------------------------\n");
      while (i <= 10)
      {
          printf(" %d x %d = %d \n ", start, i, start * i);
          i++;
      }
      start++;
     }
      // sleep(30);
     }
}
