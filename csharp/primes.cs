using System.IO;
using System;

class Program
{

    static Boolean isPrime(int number)
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
    static void Main()
    {
       int counter = 0;
        for (int k = 2; k < 100000; k++)
        {
            if (isPrime(k))
            {
                counter++;
            }
        }
        Console.Write("primes:" + counter);

    }
}
