//All the observations and the debugging performed have been mentioned(in comments)  in their respective places

#include<stdio.h>
#include<unistd.h>
#include<unistd.h>
#include<sys/wait.h>
#include<string.h>//We are working on string functions stcpy() and strcmp()
void main()
{
	
	int p[2],i,j,pid;
	char str[10][10],temp[20]; // size of the string was not sepecified
	printf("\n");

	printf("---Enter 5 strings of your choice--- \n");
	for(i=0;i<5;i++)
	{
		printf("\nString %d : ",i+1);
		scanf("%s",str[i]);
	}


	//We are using pipe for redirection such that output of child process can be used as input 	   for the parent process
	pipe(p);
	
	//Calling the fork method to clone the process existing
	pid=fork();
	
	if(pid==0)
	{
		//CHILD PROCESS STARTS HERE
		
		for(i=0;i<5;i++)
		{		
			//We are writing data out of a buffer
			write(p[1],str[i],10);
		}
	}
	else
	{
		
		//PARENT PROCESS STARTS HERE
	
		// We will print the result in parent . So we will include rest of the code in else 		block to avoid duplication of results	
	
		for(i=0;i<5;i++)
		{
			//reading the output obtained from the child process connected through pipe
			read(p[0],str[i],10);
		}
	

		//Number of iterations shouldn't exceed the number of elements entered 
		for(i=0;i<5;i++)
		{
			for(j=0;j<5;j++)
			{
				if( j+1 < 5 && strcmp(str[j],str[j+1])>0) 
				
				/* BUG encountered and cleared : Array index out of bound, since we 				   are trying to access element j+1 which is not initialized (Remember 				      there is no arrayindexoutofbound check in C , so we have to be     				 vigilant while using such expressions in our program . So using 
				 appropriate size check j+1<5 such that it doesnt exceed the size*/
				
				{
				
				/* Here we are comparing the first non common occuring character of 				   both the strings and if the character of first string is having 
				 higher ASCII value as compared to the other, it returns a possitve 				    value and this block is executed which does the swapping of two 
 				 strings and sorts the whole string array in ascending order*/				 
				
					//printf("Swap");			
				
					strcpy(temp,str[j]);
					strcpy(str[j],str[j+1]);
					strcpy(str[j+1],temp);
				}
			}
		}
		

		printf("\n --- Final output ---\n ");
		for(i=0;i<5;i++) 
		{
			/*Bug encountered : (Garbage value obtained ) We havent initialized 
			any element in 5th index so loop need not run till i<=5 ,instead use i<5 */			   
			printf("\nString %d : %s\n",i+1,str[i]);
	
		}

		printf("\n\n");
		//} Syntax error found, extra braces '}' in the program 
		}
}


