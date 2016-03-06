for (var a = 2; a < 2000000; a++)
                {
                    int cnt = 0;
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
