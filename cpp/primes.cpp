#include <iostream>

constexpr bool isPrime(int const number) {
  for (int i = 2; i < number; ++i) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

int main() {
  int total = 0;
  for (int k = 2; k < 100000; ++k) {
    if (isPrime(k)) {
      total++;
    }
  }
  std::cout << "found " << total << " prime numbers" << std::endl;
  return 0;
}
