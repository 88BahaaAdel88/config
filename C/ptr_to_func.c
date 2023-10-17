#include <stdio.h>

void fun1() {
	printf("Fun1!\n");
}
void fun2() {
	printf("FUN2!\n");
}

void wrapper(void (*test)()) {
	test();
}

int main() {
	wrapper(fun1);
	wrapper(fun2);
	return 0;
}
