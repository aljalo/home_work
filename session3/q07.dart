/* 7. Number Check Program:
Create a program that asks the user to input a number and checks if it's positive, negative, or zero
using if-else statements. */

import 'dart:io';

void main() {
  print("Enter number:");
  var input = stdin.readLineSync();
  var number = double.parse(input!);

  if (number > 0) {
    print("Positive");
  } else if (number < 0) {
    print("Negative");
  } else {
    print("Zero");
  }
}
