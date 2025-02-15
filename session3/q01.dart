/* 1. Basic Calculator:
Create a Dart program that takes two numbers as input and performs addition, subtraction,
multiplication, and division using variables, arithmetic operators, and functions. Also, include
optional parameters for different operations (e.g., addition of multiple numbers).*/

import 'dart:io';

void main() {
  print("Enter 1st number:");
  var input1 = stdin.readLineSync();
  var number1 = double.parse(input1!);

  print("Enter 2nd number:");
  var input2 = stdin.readLineSync();
  var number2 = double.parse(input2!);

  double add(double num1, double num2) {
    return num1 + num2;
  }

  double subtract(double num1, double num2) {
    return num1 - num2;
  }

  double multiply(double num1, double num2) {
    return num1 * num2;
  }

  double divide(double num1, double num2) {
    return num1 / num2;
  }

  print({add(number1, number2)});
  print({subtract(number1, number2)});
  print({multiply(number1, number2)});
  print({divide(number1, number2)});
}
