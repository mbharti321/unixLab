//Program 1


//This program is used to demonstrate the use of pipe() which is used for redirection

#include<stdio.h>
#include<unistd.h>
void main()
{
	int pid,f[2];

	//there is no need of initializing this string variable since str is getting output from write through the use of pipe
	 char str[30]="Hello World"; 
	
	pipe(f);
	pid=fork();
	if(pid==0)
	{
		//Child process
		write(f[1],"Hello",15);
		//Child process is carrying out write stream
	}
	else
	{
		//Parent process 
		read(f[0],str,15);
		//str has the value "Hello" in it.	

		//Output of the write stream is coming as the input (for str ) to the read stream using pipe()
		printf("String=%s\n",str);
	}
}


