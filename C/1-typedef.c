#include <stdio.h>

typedef struct student{
	char *name;
	int age;
}student;

int main(void)
{
	student s1;
	s1.name = "Bahaa";
	s1.age = 21;
	printf("Student Name: %s and he is %i years old!\n", s1.name, s1.age);
	return (0);
}
