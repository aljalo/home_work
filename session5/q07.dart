/*
Reverse a String
Write a function that takes a string as input and returns the string reversed.
Example:
reverseString('hello') -> 'olleh'
*/
String reverseString(String word) {
  return word.split('').reversed.join('');
}

void main() {
  print(reverseString('Hello'));
}
