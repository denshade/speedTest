def isPrime(number):
  for i in range(2, number):
		if number % i == 0:
			return False
	return True
	
for x in range(2, 2000000):
	if isPrime(x):
		print("x", end=""),
	else:
		print("O", end=""),
    
