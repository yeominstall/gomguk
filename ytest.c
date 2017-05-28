#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <fcntl.h>
#include <pthread.h>
#include <errno.h>

#define MAX_BUFFER_LEN	1024

void *ytracer (void *arg);

int main(void) {
	pid_t pid;
	int i, j, status;
	char c_tracer[50], arg[10];
	pthread_t t_id;

	pid = fork();
	if (pid == 0) {
		sprintf(arg, "%d", getpid());
		// run ytracer
		if (pthread_create(&t_id, NULL, ytracer, arg) != 0) {
			perror("PTHREAD CREATE");
		}
		// cpubomb
		execl("ramsmp-3.5.0-custom/ramsmp", "ramsmp", "-b1", (char*)0);
	} else if (pid > 0) {
		pid = wait(&status);
	}

	return 0;
}

void *ytracer (void *arg) {
	pid_t pid, ppid;
	int fp, pstatus;
	char path[50], comm[50];
	mode_t mode = 0644;

	size_t rsize = 0;
	char buf[MAX_BUFFER_LEN];

	pid = atoi(arg);
	printf("ytracer got %d, here is %d\n", pid, getpid());

	sprintf(path, "%s%d%s", "/proc/", pid, "/sched");
	sprintf(comm, "grep -E 'current_cpu|se.nr_migrations' %s >> ./res_ytrace/%d.txt", path, pid);

	ppid = fork();
	if (ppid == 0) {
		fp = open (path, O_RDWR | O_APPEND | O_CREAT, mode);
		if (fp < 0) perror("FILE OPEN");
		printf("forked ytracer : %d\n", getpid());

		while (fp) {
			system(comm);
			sleep(3);
		}
		close(fp);
	} else if (ppid > 0) {
		ppid = wait(&pstatus);
	}

	//        while ((rsize = read(fp, buf, MAX_BUFFER_LEN)) > 0) {
	//                printf("%s\n", buf);
	//                memset(buf, 0x00, sizeof(buf));
	//        }

}
