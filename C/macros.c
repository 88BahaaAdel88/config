#include <stdio.h>

#define PRINT_VAR(var) printf("%s = %d\n", #var, var);

int main()
{
	//int X = 100;
	//PRINT_VAR(X);
	printf("File :%s\n", __FILE__ );
	printf("Date :%s\n", __DATE__ );
	printf("Time :%s\n", __TIME__);
	printf("STDC :%c\n", __STDC__);
	return (0);
}
