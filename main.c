/*
 * 	main.c
 */
#include "main_header.h"


int main(int argc, char const *argv[])
{
	// var
	FILE *fr;
	unsigned char b = '\0';
	char save = EOF;
	int leng = 0;

	if (argc != 2)
	{
		printf("%s FROM\n", argv[0]);
		printf("this tool counts the chars and prints them to stdout\n");
		exit(0);
	}

	//copy file
	printf("FROM: %s\n", argv[1]);

	fr = fopen(argv[1], "rb");

	if (fr) {
	    while (fread(&b, 1, 1, fr)) {
	    	if (b != save)
	    	{
	    		if (save != EOF)
	    		{
	    			printf("%c\t%d\n", save, leng);
	    		}
	    		save = b;
	    		leng = 1;
	    	}
	    	else
	    	{
	    		leng ++;
	    	}
	    }
	    fclose(fr);
	}
	else {
	    printf("ERROR\n");
	}
	return 0;
}
