/*
Employee Payroll System
Implement an employee payroll system.
Create a base Employee class with properties: name, id, and salary.
Implement a method calculateSalary() in the base class.
Create two subclasses:
- FullTimeEmployee: Adds a bonus and overrides calculateSalary() to include the bonus.
- PartTimeEmployee: Adds hoursWorked and hourlyRate, overriding calculateSalary() to compute
salary based on hours worked.
*/
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

  FullTimeEmployee(String name, int id, double salary, this.bonus)
    : super(name, id, salary);

  @override
  double calculateSalary() {
    return salary + bonus;
  }
}

class PartTimeEmployee extends Employee {
  double hoursWorked;
  double hourlyRate;

  PartTimeEmployee(String name, int id, this.hoursWorked, this.hourlyRate)
    : super(name, id, 0);
  @override
  double calculateSalary() {
    return hoursWorked * hourlyRate;
  }
}

void main() {
  FullTimeEmployee emp1 = FullTimeEmployee('Ali', 10, 160, 1000);
  print({emp1.name, emp1.calculateSalary()});

  PartTimeEmployee emp2 = PartTimeEmployee('Ahmed', 13, 80, 20);
  print({emp2.name, emp2.calculateSalary()});
}
