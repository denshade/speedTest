public class Primes
{
	public static void main(String[] args)
	{
		

	for (int k = 104729; k < 104729 + 10000; k++)
	{
   		if (isPrime(k))
   		{
       			System.out.print('X');
   		}
   		else
   			{
       			System.out.print('O');
   			}
	}
	}

public static boolean isPrime(int number)
{
   for (int i = 2; i < number; i++ )
   {
       if (number % i == 0)
       {
           return false;
       }
   }
   return true;
}
	
}
