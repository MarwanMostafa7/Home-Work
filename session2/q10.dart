import 'dart:io';

void main() {
  int? score;

  print(score ?? 'No score');

  print('enter your score');
  String? input = stdin.readLineSync();
score=int.tryParse(input??'');;
}
