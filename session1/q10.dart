// Question 10: Explain what happens if you try to use a variable before it is declared in Dart.

void main() {
  print(number);
  //Dart is a sequential programming language so we cannot use a variable before defined it.
  int number = 5;
}
