speedTest
========
# Goal
This project has been concieved out of the simple question: How do the different procedural languages and their compiled/interpreted programs compare on CPU efficiency?

Keep in mind that the goal is not to have an efficient prime verification program. The program below is inefficient and intentionally so. 


# Methods
The code below is a C code snippet that is used as a the reference procedure for the different languages. 

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


We calculate the speed of these programs by running them 3 times on a virtual machine set up by vagrant. We use hashicorp/precise64 which is a ubuntu instance. 
You can run vagrant up to setup your machine and run https://github.com/denshade/speedTest/blob/master/vagrant/install/runAllTests.sh.
This will run all the tests and put the results in a reports directory. 

# Results

![alt text](https://raw.githubusercontent.com/denshade/speedTest/master/2016-11-27%2020_38_01-final.csv%20-%20LibreOffice%20Calc.png "Numbers")

It's clear that most language aren't far apart. 
Worst in the class are Ruby, python and PHP. Javascript is doing very well in nodejs. 

The exact numbers can be found here:
https://github.com/denshade/speedTest/blob/master/reports/final/final.csv



# Disclaimer:
- This measures how fast a language implementation is for this specific program.
- Optimisations are not welcome. 
- The goal is to use basic constructions of the language. 
- Only procedural languages are welcome. 



c[r]*a
