class Employee {
  String name;
  int id;
  double salary;

  Employee(this.name, this.id, this.salary);
  double calculateSalary() {
    return salary;
  }
}

class FullTimeEmployee extends Employee {
  double bonus;

  FullTimeEmployee(String name, int id, double salary, this.bonus) : super(name, id, salary);
  @override
  double calculateSalary() {
    return salary + bonus;
  }
}

class PartTimeEmployee extends Employee {
  double hoursWorked;
  double hourlyRate;

  PartTimeEmployee(String name, int id, double salary, this.hoursWorked, this.hourlyRate)
      : super(name, id, salary);

  @override
  double calculateSalary() {
    return hoursWorked * hourlyRate;
  }
}

void main() {

  var fullTimeEmployee = FullTimeEmployee('John', 1, 5000, 1000);
  print('Full-Time Employee Salary: \$${fullTimeEmployee.calculateSalary()}');


  var partTimeEmployee = PartTimeEmployee('Jane', 2, 0, 20, 25);
  print('Part-Time Employee Salary: \$${partTimeEmployee.calculateSalary()}');
}
