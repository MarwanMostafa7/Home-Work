int sumList(List<int> numbers) {
  return numbers.reduce((a, b) => a + b);
}

void main() {
  List<int> numbers = [1, 2, 47, 4, 8, 20];
  print(sumList(numbers));
}
