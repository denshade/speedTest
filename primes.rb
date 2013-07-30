def isPrime(number)
  for i in 2..number - 1
		if number % i == 0 then
			return false
		end
	end
        return true
end


for i in 2..2000000
	if isPrime(i) then
		puts "X"
	else
		puts "O"
	end
end
