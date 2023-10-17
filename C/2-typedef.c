#include <stdio.h>
#include <stdlib.h>

typedef int* IntPtr;

int main(void) {
	IntPtr p = (IntPtr)malloc(sizeof(int));
	if (p == NULL) {
		printf("memory allocation failed.\n");
		return 1;
	}
	*p = 100;
	printf("%d\n", *p);
	free(p);
	return 0;
}

