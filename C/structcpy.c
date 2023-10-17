#include <stdio.h>
#include <stdlib.h>

int main(void) {
	struct point {
		int x;
		int y;
	};

	struct point p = {1, 3}; /* initialized variable */
	struct point q;		 /* uninitialized */
	q = p;			 /* copy member values from p into q */
	printf("%d\n", q.x);
	return 0;

