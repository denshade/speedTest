var cnt = 0;
for (var a = 2; a < 100000; a++)
                {
                    if (isPrime(a))
                      cnt++;

                }
process.stdout.write("Found " + cnt + "primes");

                function isPrime(number)
                {
                    for (var a = 2; a < number; a++)
                    {
                        if (number % a == 0)
                        {
                            return false;
                        }
                    }
                    return true;
                }
