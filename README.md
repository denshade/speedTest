speedFun
========
This project is a simple program written in different languages. 
The goal is not to have an efficient prime verification program. The goals is a comparison of the 
performance of the procedures languages next to each other.

How much faster is C than Java?

Example code that is the basis for others to start from:

    int main()
    {
      int k;
	    for (k = 2; k < 200000; k++)
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



Disclaimer:
This measures how fast a language is for this specific program. Optimisations are not welcome. 
The goal is to use basic constraints of the language. 
Only procedural languages are welcome. 
Later on perhaps functional languages may come along but not now.

