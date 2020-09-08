#include<stdio.h>
#include<fcntl.h>
#include<unistd.h>
#include<sys/wait.h>
void main()
{
	int fp[2],a;
	char ch[12];
	
	//Using pipe() for redirection such that output of child process is taken as input for the  	    parent process
	pipe(fp);

	//Calling the fork system call to create clone process of already existing process
	a=fork();
	if(a==0)
	{
		//Child process
		
		printf("\n Child id =%d\n",getpid());
		fp[1]=open("d.txt",O_WRONLY);// Opening the file d.txt for writing
		write(fp[1],"Hello World",12); // Writing to the filestream
		close(fp[1]);// close the file descriptor so that it no longer refers to any file 
		// and can be reused
	}
	else
	{
		//Parent process
		
		wait(NULL); 
		/* We have to use wait here, so that once the child process finish the execution
		 parent process will begin */			
		
		printf("\n Parent id =%d\n",getpid());
		fp[0]=open("d.txt",O_RDONLY); // opening file for reading
		read(fp[0],ch,12); //Reading from the filestream 
		printf("\n Output : %s \n",ch);
		close(fp[0]); //Closes file descriptor so that it no longer refers to any file and 		   can be reused
	}

}
