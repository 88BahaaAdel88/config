#include <stdio.h>
#include <stdlib.h>

int sum(int a, int b) {
	return a + b;
}
typedef int (*FuncPTR)(int, int);

int main(void) {
	FuncPTR add = sum;

	int result = add(5, 3);

	printf("%d\n", result);

	return 0;
}
