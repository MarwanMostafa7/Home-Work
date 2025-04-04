String longestWord(String sentence) {
  List<String> word = sentence.split(' ');
  String longestWords = word[0];
  for (String words in word) {
    if (words.length > longestWords.length) {
      longestWords = words;
    }
  }
  return longestWords;
}
void main() {
  //String sentence = "I love programming in Dart!";//
     // longestWord("I love programming in Dart!");
  print('أطول كلمة هي: ${longestWord('I love programming in Dart')}');
}
