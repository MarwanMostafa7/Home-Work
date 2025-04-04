bool checkNumbers(int number) {
  if (number < 2) {
    return false;
  }
  for (int i = 2; i < number; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

List<int> findPrimes(int start, int end) {
  if (start < 2) {
    print("خطأ: الحد الأدنى يجب أن يكون 2 أو أكثر.");
  }
  List<int> Primes = [];
  for (int i = start; i <= end; i++) {
    if (checkNumbers(i)) {
      Primes.add(i);
    }
  }
  return Primes;
}

void main() {
  print("الأعداد الأولية هي: ${findPrimes(0, 50)}");
}
