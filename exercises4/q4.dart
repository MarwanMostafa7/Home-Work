void main() {
  int year = 2024;
  if (leapYear(year)) {
    print("$year هي سنة كبيسة.");
  } else {
    print("$year ليست سنة كبيسة.");
  }
}

bool leapYear(int year) {
  return (year % 4 == 0 && year % 100 != 0 || year % 400 == 0);
}
