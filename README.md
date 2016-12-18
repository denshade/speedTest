speedTest
========
This project has been concieved out of the simple question: How do the different languages and their compilers/interpreters compare on CPU efficiency?

Keep in mind that the goal is not to have an efficient prime verification program. 

This is a primitive check and focusses on CPU efficiency. 

The code below is a C code snippet that is used as a starting point procedure for the different languages. 

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


We calculate the speed of these programs by running them 3 times on a virtual machine set up by vagrant. 

Results

![alt text](https://raw.githubusercontent.com/denshade/speedTest/master/2016-11-27%2020_38_01-final.csv%20-%20LibreOffice%20Calc.png "Numbers")



Disclaimer:
- This measures how fast a language implementation is for this specific program.
- Optimisations are not welcome. 
- The goal is to use basic constructions of the language. 
- Only procedural languages are welcome. 



c[r]*a
