int countWords(String sentence) {
  List<String> words = sentence.split(' ').where((word) => word.isNotEmpty).toList();
  return words.length;
}

void main() {
  String sentence = "   Hello   world   how are you   ";
  print(countWords(sentence));
}
