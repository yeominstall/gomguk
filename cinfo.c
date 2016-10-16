#include <stdio.h>
#include <sched.h>

int main (void) {
	int cpu_i = 0;

	cpu_i = sched_getcpu();

	printf ("current cpu id : %d\n", cpu_i);

	return 0;
}
