#include<stdio.h>
#include<stdlib.h>
#include<sys/types.h>
#include<sys/wait.h>
#include<signal.h>
#include<unistd.h>
int main()
{
	pid_t value1;// return value of fork()
	pid_t value2;
	value1=fork();
 	int flag=0;

	if ( value1==0 )
	{
		printf("\n Child1 (id : %d , parent : %d) \n",getpid(),getppid());
	}
	else if( value1 > 0 )
	{	
		wait(NULL);
		value2=fork();

		if(value2 == 0)
		{

			printf("\nChild2 (id : %d , parent id : %d ) \n",getpid(),getppid());
			
			if(fork()==0)
			{
				flag=1;
				printf("\n Grandchild (id : %d ,parent id : %d ) \n",getpid(),getppid());
			}
	
		}
		else if(value2 > 0)
		{
			wait(NULL);
			printf("\n Parent (id : %d ) \n",getpid());
		}
	
	}

	if( value1 < 0 )
	{
		printf("\n Fork failed \n");
	}
	
	return 0;
}
