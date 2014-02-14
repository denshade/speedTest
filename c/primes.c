#include <stdio.h>

int main()
{
	int k;
	for (k = 2; k < 2000000; k++)
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



