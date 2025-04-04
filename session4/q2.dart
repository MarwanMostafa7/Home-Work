void main() {
  print(calculateBonus(5000, 2));
}

num calculateBonus(num salary, num yearsWorked) {
  if (yearsWorked < 0) {
    return 0;
  } else if (yearsWorked >= 5) {
    return salary * 10 / 100;
  } else {
    return salary * 5 / 100;
  }
}
