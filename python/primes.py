def isPrime(number):
    for i in range(2, number):
        if number % i == 0:
            return False
    return True

counter  = 0
for x in range(2, 100000):
    if isPrime(x):
        counter = counter + 1

print("primes:",counter)
