void main() {
  Map<String, String> person = {
    'name': 'Alice',
    'age': '25',
    'city': 'NewYork',
  };
  print('Ahmed\'s age is: ${person['age']}');
  person['city'] = 'Los Angeles';
  print('Updated person city:${person}');

}