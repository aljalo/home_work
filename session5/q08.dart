/*
Sum of List Elements
Write a function that takes a list of numbers and returns the sum of all elements.
Example:
sumList([1, 2, 3, 4, 5]) -> 15
*/
int sumList(List<int> numbers) {
  return numbers.reduce((a, b) => a + b);
}

void main() {
  print(([1, 2, 3, 4, 5, 6]));
}
