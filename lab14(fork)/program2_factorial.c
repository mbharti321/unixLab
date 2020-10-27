
/* This program creates two child processes. The parent process wait until its child process finishes execution.
The first process - sorts array in ascending order.
The second process - finds total even numbers in a given array */

#include  <stdio.h>
#include  <string.h>
#include  <sys/types.h>
#include <stdlib.h>
void process1();
void process2();


int j,temp,i;
int a[10] = { 2, 4, 6, 7, 9, 0, 1, 5, 8, 3 }; 
int pid1,pid2;

    
int main()
{
	
 

	pid1 = fork();

   // pid1 is equal to zero. Process 1 gets executed
      if (pid1 == 0) 
	{
	  
          process1();
	  
	}


     else 
	{ 
		pid2 = fork();
		// pid2 is equal to zero. Process 2 gets executed
		if(pid2 == 0)
	      {
   
         	process2();
	      }

	else
	{	// if both the above conditions fails. Parent process gets executed.
  		wait(pid1,pid2); 
  
        	// waiting for child process to end 
        	printf("Parent process waiting\n"); 

	}
    }
}


// Function for child process 1
 void process1()
{
	//fork();
		printf("First child process \n");
		for(i = 0; i < 10; i++)
		{
			for(j = 0 ; j < 9; j++)
			{
				if(a[j] > a[j+1])
				{
					temp = a[j];
					a[j] = a[j+1];
					a[j+1] = temp;
				}
			}
		}
	
 
	printf("The sorted array is : \n");
	for( i = 0; i < 10 ; i++)
	{
		printf("%d \n",a[i]);
	}
	
}

// Function for child process 2
void process2()
{
  
   	int even_count = 0;
   	 printf("Second child process \n");
    	for(i = 0; i < 10; i++)
		{
			if(a[i] % 2 == 0)
			 even_count++;
		}
	printf("The total number of even numbers are : %d \n",even_count);
	
}



	

