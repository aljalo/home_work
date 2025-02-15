/* 8. Range Checker Program:
Write a Dart program that checks if a number is within a specified range using logical operators and
prints the result. */

import 'dart:io';

void main() {
  print("Enter Number: ");
  var input = stdin.readLineSync();
  var number = double.parse(input!);

  var lowerBound = 1;
  var upperBound = 10;

  if (number >= lowerBound && number <= upperBound) {
    print("The number in range [$lowerBound, $upperBound].");
  } else {
    print("The number outside range [$lowerBound, $upperBound].");
  }
}
