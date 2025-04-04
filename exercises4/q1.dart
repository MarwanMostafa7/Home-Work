void main() {
  Calculat(12, 5);
}

void Calculat(double number1, double number2) {
  print('الاعداد $number1 , $number2');
  double Collection = number1 + number2;
  print(' الجمع : $Collection');
  double Subtraction = number1 - number2;
  print('الطرح : $Subtraction');
  double Multiplication = number1 * number2;
  print(' الضرب:$Multiplication');
  if (number2 != 0){
    double Division = number1 / number2;
    print('القسمه : $Division');
    double remainderDivision = number1 % number2;
    print('باقي القسمه : $remainderDivision');
  } else {
    print('Division by zero error');
  }
}
