#include <stdio.h>
#include <stdlib.h>

int main()
{
	int k;
  int cnt=0;
	for (k = 2; k < 100000; k++)
	{
		if (isPrime(k))
            cnt++;
	}

  printf("found %d prime numbers",cnt);
	exit(0);
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
