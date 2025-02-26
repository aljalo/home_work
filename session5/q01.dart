/*
Basic Arithmetic Calculator
Write a function that takes two numbers and an operator (+, -, *, /) as input and returns the result.
Handle cases where division by zero might occur.
*/
double calculator(double num1, double num2, String operation) {
  switch (operation) {
    case '+':
      return num1 + num2;
    case '-':
      return num1 - num2;
    case '*':
      return num1 * num2;
    case '/':
      if (num2 == 0) {
        throw Exception('Not allow');
      }
      return num1 / num2;
    default:
      throw Exception('Not Allow');
  }
}

void main() {
  print(calculator(5, 10, '+'));
  print(calculator(10, 8, '-'));
  print(calculator(5, 5, '*'));
  print(calculator(10, 2, '/'));
}
