package main

import "fmt"

func isPrime(x int) bool {
  for k := 2; k < x; k++{
		if x % k == 0 {
			return false
		}
	}
	return true
}

func main() {
  counter := 0
	for k := 2; k < 100000; k++ {
		if isPrime(k) {
        counter++
			}
	}
  fmt.Print("Primes:")
  fmt.Print( counter)
}
