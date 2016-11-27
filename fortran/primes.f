 FUNCTION isPrime(a)
    INTEGER :: isPrime
    INTEGER :: a
    INTEGER :: moduloResult
    INTEGER :: current
    isPrime = 1
    do current = 2, a - 1
        moduloResult = modulo(a, current)
        if (moduloResult == 0) then
             isPrime = 0
             exit
        end if
    end do
    RETURN
 END FUNCTION

Program Primes
  INTEGER :: counter, i
  counter = 0
  do i=2, 100000
     if (isPrime(i) == 1) then
        counter = counter + 1
     end if
  end do
  write (*,*), counter
End Program Primes
