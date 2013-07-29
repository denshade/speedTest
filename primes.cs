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
        for (int k = 2; k < 20; k++)
        {
            if (isPrime(k))
            {
                Console.Write("X");                            
            }else
            {
                Console.Write("O");                            
            }
        }
        
    }
}
