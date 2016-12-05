#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>
#include <stdio.h>
#include <omp.h>
#include <sched.h>

#define T_MAX 16

pid_t _execv(const char *path, char *const argv[]);

int main (int argc, char *argv[]) {

	int i, j;
	int opt;

	pid_t pid;
	char path[] = "ramsmp-3.5.0-custom/ramsmp";
	char *argv_opt[] = {"ramsmp", "-b", "3", "-p", "1", NULL};

	unsigned long mask;
	
	opt = atoi ( argv[1] );

	// opt2 : symmetric distribuition
	if ( opt == 1 ) {
		omp_set_num_threads(8);
#pragma omp parallel
	{
#pragma omp for
		for ( i = 0; i < T_MAX; i++ ) 
			system ( "ramsmp-3.5.0-custom/ramsmp -b 3 -p 1" );
	}
	} // if-end
	// opt3
	if ( opt == 2 ) {
	
		// big core
		mask = 32;
		//pid = _execv(path, argv_opt);	// run ramsmp & return ramsmp PID
		sched_setaffinity ( _execv(path, argv_opt), sizeof(cpu_set_t), &mask );

		// LITTLE core
		//sched_setaffinity ( 0, sizeof(cpu_set_t), (cpu_set_t*)&mask );

	}

	return 0;
}

pid_t _execv(const char *path, char *const argv[]) {
	int ret;
	pid_t pid;
	unsigned long mask;

	pid = fork();
	if (pid == -1) {
		perror("fork");
		exit(EXIT_FAILURE);
	}
	if (pid == 0) {
		mask = 32;
		ret = execv(path, argv);
		sched_setaffinity ( 0, sizeof(cpu_set_t), &mask );
		if (ret == -1) {
			perror ("execv");
			exit(EXIT_FAILURE);
		}
	}
	waitpid (-1, NULL, 0);

	return pid;
}
