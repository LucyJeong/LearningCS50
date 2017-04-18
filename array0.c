#include <stdio.h>

int main(int argc, const char* argv[])
{
	if (argc == 2)
	{
		printf("hello,%s\n", argv[1]);
  }
	else
	{
		printf("hello, world\n");
	}
}
