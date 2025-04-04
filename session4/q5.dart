void main() {
  List<String> names = ['Ali', 'Marwan', 'Ahmed', 'Ali', 'Marwan', 'Sara'];
  Set<String> uniqueSet = uniqueNames(names);
    print("Unique names: $uniqueSet");
}
Set<String> uniqueNames(List<String> names) {
  return names.toSet();
}
