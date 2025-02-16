/* 2. Grocery List Manager:
Implement a program that uses a List to store grocery items. It should allow adding, removing, and
displaying items. Use functions with return types and optional/named parameters. Make sure to
handle possible null values.*/

class GroceryListManager {
  List<String> groceryItems = [];

  void addItem({required String item}) {
    groceryItems.add(item);
    print(item);
  }

  void removeItem({required String item}) {
    groceryItems.remove(item);
    print(item);
  }

  List<String> displayItems() {
    return groceryItems;
  }
}

void main() {
  var groceryManager = GroceryListManager();

  groceryManager.addItem(item: "Bananas");
  groceryManager.addItem(item: "Apples");
  print(groceryManager.displayItems());

  groceryManager.removeItem(item: "Apples");
  print(groceryManager.displayItems());
}
