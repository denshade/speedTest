for (var a = 2; a < 2000000; a++)
                {
                    if (isPrime(a))
                      process.stdout.write('X');
                    else
                      process.stdout.write('O');

                }

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
