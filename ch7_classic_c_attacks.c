#include <stdio.h>



// Classic C Attacks
int main()
{

// Printing Without proper format specifier
   	char *someVar;
	someVar = "%x%x%x%x%x%x";
	printf(someVar);



// Using Format Specifier for printing
	
	someVar = "%x%x%x%x%x%x";
	printf("%s",someVar);


}


