import 'digital_products.dart';
import 'inventory_manager.dart';
import 'physical_products.dart';
import 'products.dart';

void main() {
  InventoryManager inventory = InventoryManager();

  inventory.addProduct(PhysicalProducts('Laptop', 2000.0, 'Electronic', 10));
  inventory.addProduct(DigitalProducts('Application', 5000, 'development', 5));

  print(inventory.calculateTotalInventoryValue());

  List<Product> digitalProducts = inventory.filterByCategory('Electronics');
  print(digitalProducts.length);
}
