void main() {
  Set<int> uniqueNumbers = {10, 20, 30, 40};

  print('length OF: ${uniqueNumbers.length}');

  bool contains = uniqueNumbers.contains(20);
  
  print('Does it have the number 20 in it? : $contains');
}
