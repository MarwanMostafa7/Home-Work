void main() {
//The Difference Between dynamic and var in Dart

//var

//Used to define a variable of any type, but only at the first assignment.
//Once a value is assigned, the variable's type is fixed and cannot be changed later.
//The value itself can be updated as long as it remains of the same type.

//dynamic
//Allows defining a variable that can hold values of any data type.
//The type of the variable can change at any time.
//You can assign different types of values to it without restrictions.ou can assign different types of values to it without restrictions.

////example var
  var name = 'mrwan';
  print('$name');
  name = 'ahmed';
  print('$name');

////example daynamic
  dynamic age = 20;
  print('$age');
  age = true;
  print('$age');
}
