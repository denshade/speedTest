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
  do i=104729, 104729+10000 
     if (isPrime(i) == 1) then 
        write (*,*) "X"
     else 
        write (*,*) "O"
     end if  
  end do 

End Program Primes
