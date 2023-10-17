#include <stdio.h>
#include <stdlib.h>

typedef struct Point{
	int x, y;
}PTR;

int main(void)
{
	PTR p;
	PTR l;
	p.x = 10;
	p.y = 20;
	l.x = 30;
	l.y = 40;
	printf("%i %i %i %i\n", p.x, p.y, l.x, l.y);
	return (0);
}
