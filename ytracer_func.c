#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <fcntl.h>
#include <linux/sched.h>
#include <errno.h>

#define	MAX_BUFFER_LEN	1024

struct core_used {
	int idx;
	int cpu;
	struct core_used *next;
};

int ytracer (pid_t pid) {
	pid_t ppid;
	int fp, status;
	char path[50], comm[50];
	mode_t mode = 0644;

	size_t rsize = 0;
	char buf[MAX_BUFFER_LEN];

	sprintf(path, "%s%d%s", "/proc/", pid, "/sched");
	sprintf(comm, "grep -E 'current_cpu|se.nr_migrations' %s >> ./res_ytrace/%d.txt", path, pid);

	ppid = fork();
	if (ppid == 0) {
		fp = open (path, O_RDWR | O_APPEND | O_CREAT, mode);
		if (fp < 0) perror("FILE OPEN");

		while (fp) {
			system(comm);
			sleep(3);
		}
		close(fp);
	}
	ppid = wait(&status);

	//        while ((rsize = read(fp, buf, MAX_BUFFER_LEN)) > 0) {
	//                printf("%s\n", buf);
	//                memset(buf, 0x00, sizeof(buf));
	//        }

	return 0;
}
