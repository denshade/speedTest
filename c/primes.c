#include <stdio.h>

int main()
{
	int k;
	for (k = 104729; k < 104729 + 10000; k++)
	{
		if (isPrime(k))
		{
			printf("X");
		} else {
			printf("O");
		}
	}  
}

int isPrime(int number)
{
   int i;
   for (i = 2; i < number; i++ )
   {
       if (number % i == 0)
       {
           return 0;
       }
   }
   return 1;
}



