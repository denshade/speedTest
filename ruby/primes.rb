def isPrime(number)
  for i in 2..number - 1
		if number % i == 0 then
			return false
		end
	end
        return true
end

counter = 0
for i in 2..100000

  if isPrime(i) then
		counter = counter + 1
	end
end

puts "primes : " + counter.to_s
