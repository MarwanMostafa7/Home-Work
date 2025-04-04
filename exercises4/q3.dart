double convertTemperature(double value, String unit) {
  if (unit.toUpperCase() == 'C') {
    return (value * 9 / 5) + 32; // تحويل من سيلسيوس إلى فهرنهايت
  } else if (unit.toUpperCase() == 'F') {
    return (value - 32) * 5 / 9; // تحويل من فهرنهايت إلى سيلسيوس
  } else {
    throw ArgumentError("Invalid unit. Use 'C' for Celsius or 'F' for Fahrenheit.");
  }
}

void main() {
  double tempCtoF = convertTemperature(100, 'C');
  print("100°C = ${tempCtoF.toStringAsFixed(2)}°F"); // الناتج: 100°C = 212.00°F

  double tempFtoC = convertTemperature(32, 'F');
  print("32°F = ${tempFtoC.toStringAsFixed(2)}°C"); // الناتج: 32°F = 0.00°C
}
