class Person {
  String name;
  int? age;
  bool isStudent;

  Person(this.name, this.age, {this.isStudent = false});

  void displayInfo() {
    print('Name: $name');
    print('Age: $age  ');
    print("Is Student: $isStudent");
  }
}

