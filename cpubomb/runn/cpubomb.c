#include "stdio.h"
#include <stdlib.h> 

#define TOTALFORK 4

int doBomb(){
int i=4196016,j=32767,l,k,m,jj;jj=2342;
k= 31455;l= 16452;m= 9823;
long a;
for(a=0;a<50000000;a++){
m = m^l;k = (k/m * jj) % i; l=j*m*k;
i = (j * k)^m ;k = (k/m * jj) % i;m = m^l;
m = m^l;i = (j * k)^m ;k = (k/m * jj) % i;
m=i*i*i*i*i*i*i;// m=k*l*jj*l;
m = m^l;k = (k/m * jj) % i;l=j*m*k;i = (j * k)^m ;
l = (k/m * jj) % i;m = m^l;m = m^l;i = (j * k)^m ;
k = (k/m * jj) % i; m=k*k*k*k*k - m/i; 
}}

int main(int argc, char* argv[]){
	int tnum = atoi(argv[1]);
	int i;
	pthread_t thread[tnum];
        int joinStatus;
        //int f1=1,f2=2,f3=3,f4=4;

	for (i = 0; i < tnum; i++){
	        pthread_create(&thread[i], NULL, doBomb, NULL);
	}

	for (i = 0; i < tnum; i++){
        	pthread_join(thread[i], (void**)&joinStatus);
	}

	/*pid_t pids[TOTALFORK], pid;
        int runProcess = 0;
        int state;

	while(runProcess < TOTALFORK){
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


	/*pid_t pid, pid1;

	pid = fork();

	if(pid == 0){
		doBomb();
	}else{
		pid1 = fork();

		if(pid1 == 0){
			doBomb();
		}else{
			doBomb();
		}
	}*/

}
