// Question 7: Given this code, identify any errors and explain why they occur: ```dart void main() { String name = "Alice"; name = 123; print(name); } ```

void main() {
  String name = "Alice";
  name = 123;
  //The error because we can`t change a value of type String to numbers(int).
  print(name);
}
