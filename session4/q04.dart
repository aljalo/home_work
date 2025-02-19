/*
4. Maps, Functions & User Input
Create a Dart program that:
- Declares a `Map<String, int>` where keys are fruit names and values are their
prices.
- Implements a function `getPrice(String fruitName)` that returns the price of a
given fruit.
- If the fruit is not found, return -1.
Call the function inside `main()` and print the result.
*/
Map<String, int> fruitPrices = {"Apple": 3, "Banana": 2, "Cherry": 5};

int getPrice(String fruitName) {
  return fruitPrices[fruitName] ?? -1;
}

void main() {
  print("Price: ${getPrice("Apple")}");
}
