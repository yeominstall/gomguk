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

int main (int argc, char* argv[]) {

        struct core_used;
        unsigned int pid_p;
        int fp;
        char path[50], comm[50];
        mode_t mode = 0644;

        size_t rsize = 0;
        char buf[MAX_BUFFER_LEN];

        pid_p = atoi(argv[1]);
        sprintf(path, "%s%s%s", "/proc/", argv[1], "/sched");
	sprintf(comm, "grep se.nr_migrations %s >> ./res_ytrace/%s.txt", path, argv[1]);

        fp = open (path, O_RDWR | O_APPEND | O_CREAT, mode);
        if (fp < 0) perror("no search file");
	
	while (fp > 0) {
		system(comm);
		sleep(3);
	}

	sprintf(comm, "grep se.nr_migrations %s", path);
	

//        while ((rsize = read(fp, buf, MAX_BUFFER_LEN)) > 0) {
//                printf("%s\n", buf);
//                memset(buf, 0x00, sizeof(buf));
//        }

        close(fp);
        return 0;
}
