#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <limits.h>
#include <omp.h>

#define	T	50

int main (void) {
	unsigned int i, sum;
	i = 0;
	sum = 0;
	pid_t pid[T];
	pid_t p;
	int status;

//	omp_set_num_threads(5);
	for(i=0;i<T;i++) {

	if ( ( p = fork() ) == 0 ) {
//#pragma omp parallel
//		{
//#pragma omp for
		for (i = 0; i < 50; i++) {
			sum++;
		}
//		}
		break;
	} 
	else pid[i]=p;
	}
	if(p==0) pause();
        else {
		for(i=0;i<T;i++) {
		waitpid ( pid[i], &status, 0 );
		}
	}

	return EXIT_SUCCESS;
}
