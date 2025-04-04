void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10,11];
  for (var checkNumber in numbers) {
    if (checkNumber % 2 == 0) {
      print('Even: $checkNumber');
    }else if(checkNumber %2!=0) {
      print('Odd: $checkNumber');
    }
    }
  }

