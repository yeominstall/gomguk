#include "stdio.h"
#include <pthread.h>

#define TOTALFORK 3

void doBomb() {
int i,j,l,k,m,jj;jj=2342;
k= 31455;l= 16452;m= 9823;long a;for(a=0;a<500000;a++)
{ m = m^l;k = (k/m * jj) % i; l=j*m*k;
i = (j * k)^m ;k = (k/m * jj) % i;m = m^l;
m = m^l;i = (j * k)^m ;k = (k/m * jj) % i;
m=i*i*i*i*i*i*i;// m=k*l*jj*l;
m = m^l;k = (k/m * jj) % i;l=j*m*k;i = (j * k)^m ;
l = (k/m * jj) % i;m = m^l;m = m^l;i = (j * k)^m ;
k = (k/m * jj) % i; m=k*k*k*k*k - m/i;
}}
int main(){
	pid_t pids[TOTALFORK], pid;
	int runProcess = 0;
	int state;

	pid = fork();

	if(pid == 0){
		//doBomb();
	}else{
		doBomb();
	}

	/*while(runProcess < TOTALFORK){
		pid = wait(&state);
		pids[runProcess] = fork();

		if(pids[runProcess] < 0){ return -1;
		}else if(pids[runProcess] == 0){ 
			doBomb();
		}else {
			doBomb();
		}
		runProcess++;
	}*/
}

