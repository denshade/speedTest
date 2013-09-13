speedTest
========
This project is a simple program written in different languages. 
The goal is not to have an efficient prime verification program. The goal is a comparison of the 
performance of the procedural languages next to each other.

This doesn't mean this language will be x times faster than the other. In your case it might be better 
or worse. Seriously use your brain and profile your own application. Hell you might learn something.

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
The goal is to use basic constructions of the language. 
Only procedural languages are welcome. 
Later on perhaps functional languages may come along but not now.

