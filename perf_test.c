/* performance test for 2 case */

#include <sys/types.h>
#include <unistd.h>
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>

int iter (void);

int main() {

	pthread_t thread;
	int err;
	int status;
	int i;

	for (i = 0; i < 10000; i++){
		err = pthread_create (&thread, NULL, iter, NULL);

		if (err < 0) {
			perror ("thread create error : ");
			exit(0);
		}
	}

}

int iter (void){
	
}
