#include <stdio.h>
#include <stdlib.h>

int g_var = 10;
int global_var;
static int s_var = 20;
static int static_var;

int main(int argc, char **argv, char **envp)
{
static int s_var = 30;
static int static_var;
int l_var = 40;
int local_var;
char *dynamic_var = (char*)malloc(100);
printf("Usha Ramachandra 1947267\n");
printf("Address of initialized global variable: %p\n", &g_var);
printf("Address of uninitialized global variable: %p\n", &global_var);
printf("Address of initialized static variable in global scope: %p\n", &s_var);
printf("Address of uninitialized static variable in global scope: %p\n", &static_var);
printf("Address of initialized static variable in local scope: %p\n", &s_var);
printf("Address of uninitialized static variable in local scope: %p\n", &static_var);
printf("Address of initialized local variable: %p\n", &l_var);
printf("Address of uninitialized local variable: %p\n", &local_var);
printf("Address of function (code): %p\n", &main);
printf("Address of dynamic variable: %p\n", dynamic_var);
printf("Address of environment variable: %p\n", &envp[0]);
exit(0);
}
