#include <stdio.h>
#include <stdlib.h>

struct User
{
	char *name;
	char *email;
	int age;
};
typedef struct User User;

User *new_user(char *name, char *email, int age)
{
       	User *user;

	user = malloc(sizeof(User));
	user->name = name;
	user->email = email;
	user->age = age;

	return user;
}
int main(void)
{
	User *user;

	user = new_user("foo", "foo@foo.hoe", 99);
	if (user == NULL)
		return (1);
	printf("User %s created !\n", user->name);
	printf("His name is %s\n", user->email);
	printf("and he is %d years old\n", user->age);
	return (0);
}
