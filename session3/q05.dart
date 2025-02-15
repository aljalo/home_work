/* 5. Class Creation and Dot Operator Usage:
Create a class with a few properties and methods. Instantiate the class and use the dot operator to
access and print its properties and methods. */

class Person {
  String name;
  int age;
  Person(this.name, this.age);
  void displayInfo() {}
}

void main() {
  var person = Person("Ali", 30);
  person.displayInfo();
  print("Name: ${person.name}");
  print("Age: ${person.age}");
}
