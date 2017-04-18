#include <stdio.h>
#include <string.h>

int main(int argc, const char* argv[])
{
	// iternate over string in argv
	for (int i = 0; i < argc; i++)
	{
	//iternate over characters in current string
		for(int j = 0, n = strlen(argv[i]); j < n; j++)
		{
			printf("%c\n", argv[i][j]);
		}
	}
}
