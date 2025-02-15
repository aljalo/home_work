/* 2. Grocery List Manager:
Implement a program that uses a List to store grocery items. It should allow adding, removing, and
displaying items. Use functions with return types and optional/named parameters. Make sure to
handle possible null values.*/

class GroceryListManager {
  List<String> _groceryItems = [];

  void addItem({String item = ''}) {
    _groceryItems.add(item);
    print(item);
  }

  void removeItem({String item = ''}) {
    _groceryItems.remove(item);
    print(item);
  }

  List<String> displayItems() {
    return _groceryItems;
  }
}

void main() {
  var groceryManager = GroceryListManager();

  groceryManager.addItem(item: "Apples");
  groceryManager.addItem(item: "Bananas");
  print({groceryManager.displayItems()});

  groceryManager.removeItem(item: "Apples");
  print({groceryManager.displayItems()});
}
