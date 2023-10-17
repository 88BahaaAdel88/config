#include <stdio.h>

int main(void)
{
	char *str = "Holberton";
	printf("%s\n", str);
	str[0] = 's';
	printf("%s\n", str);
	return 0;
}

