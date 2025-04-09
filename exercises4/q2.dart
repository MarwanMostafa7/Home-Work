void main() {
  double tempCtoF = convertTemperature(100, 'C');
  print("100°C = $tempCtoF°C");
  print("32°F = ${(32, 'F')}°C");
}

double convertTemperature(double numnber, String unit) {
  if (unit.toUpperCase() == 'f') {
    return (numnber - 32 * 5 / 9); // تحويل من سيلسيوس إلى فهرنهايت
  } else if (unit.toUpperCase() == 'c') {
    return (numnber * 9 / 5 + 32); // تحويل من فهرنهايت إلى سيلسيوس
  } else {
    print("Invalid unit: Use 'C' for Celsius or 'F' for Fahrenheit.");
  }
  return double.nan;
}
