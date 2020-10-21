#include <pthread.h> 
#include <semaphore.h>
#include <sys/shm.h>
#include <stdlib.h> 
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>

int fp1[2],a,b,fp2[2];
char ch1[13]="";
char ch2[13]="";
sem_t empty;
sem_t full;
pthread_mutex_t mutex;
void *process1(void *pno)
{
	pipe(fp1);
	a=fork();
	if(a>0){
		fp1[0]=open("file2.txt",O_RDONLY); 
        	read(fp1[0],ch1,13);
        	printf("Parent Reading file2  =%s \n",ch1);
        	close(fp1[0]);
	}
	else{
		sem_wait(&empty);
		pthread_mutex_lock(&mutex);
	
		printf("Parent Writing to file1\n");
		printf("Child Process waiting to read file1\n");
		fp1[1]=open("file1.txt",O_WRONLY);
       		write(fp1[1],"File 1 open\n",13);
        	close(fp1[1]);
		
		pthread_mutex_unlock(&mutex);
		sem_post(&full);
	}

}
void *process2(void *cno)//consumer that consumes portions
{

	pipe(fp2);
    b=fork();
    if(b>0)
    {
        fp2[0]=open("file1.txt",O_RDONLY);
        read(fp2[0],ch2,13);
        printf("Child Reading file1  =%s \n",ch2);
        close(fp2[0]);
	}
	else{
        	sem_wait(&empty);
        	pthread_mutex_lock(&mutex);
        	printf("Child Writing to file2\n");
            printf("Parent Process waiting to read file2\n");
        	fp2[1]=open("file2.txt",O_WRONLY);
        	write(fp2[1],"File 2 open\n",13);
        	close(fp2[1]);
        	
        	pthread_mutex_unlock(&mutex);
        	sem_post(&full);
	}
}
int main()
{
	pthread_t pro1[2],pro2[2];
	pthread_mutex_init(&mutex, NULL); 
	sem_init(&empty,0,2); 
	sem_init(&full,0,0); 
	int a[2] = {1,2}; 
	for(int i = 0; i < 2; i++) {
		pthread_create(&pro1[i], NULL, (void *)process1, (void *)&a[i]);
		pthread_create(&pro2[i], NULL, (void *)process2, (void *)&a[i]);
		
	}
	for(int i = 0; i < 2; i++) {
		pthread_join(pro1[i], NULL);
	}
	for(int i = 0; i < 2; i++) {
		pthread_join(pro2[i], NULL);
	}
	pthread_mutex_destroy(&mutex);
	sem_destroy(&empty);
	sem_destroy(&full);
	return 0;
}
