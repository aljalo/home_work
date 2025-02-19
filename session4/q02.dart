/*
2. Arithmetic Operators, Conditional Statements & Functions
Write a function `calculateBonus(int salary, int yearsWorked)` that calculates a
bonus based on the following rules:
- If the employee has worked for 5 or more years, they get a 10% bonus.
- Otherwise, they get a 5% bonus.
The function should return the bonus amount.
Then, call the function inside `main()` and print the result.
*/
double calculateBonus(int salary, int yearsWorked) {
  return yearsWorked >= 5 ? salary * 0.10 : salary * 0.05;
}

void main() {
  int salary = 5000;
  int yearsWorked = 6;
  print("Bonus: \$${calculateBonus(salary, yearsWorked)}");
}
