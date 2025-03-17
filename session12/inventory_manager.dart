import 'products.dart';

class InventoryManager {
  List<Product> products = [];

  void addProduct(Product product) {
    products.add(product);
  }

  double calculateTotalInventoryValue() {
    return products.fold(
      0,
      (sum, product) => sum + product.getPriceWithDiscount(),
    );
  }

  List<Product> filterByCategory(String category) {
    return products.where((product) => product.category == category).toList();
  }
}
