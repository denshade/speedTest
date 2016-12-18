function isPrime(number)
   for i = 2, number - 1, 1 do
        if number % i == 0 then
           return 0
        end
   end
   return 1
end

local cnt = 0
for k = 2, 100000,1 do
	if isPrime(k) == 1 then
          cnt = cnt + 1
  end
end
print(cnt)
