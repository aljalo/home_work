import 'products.dart';

class PhysicalProducts extends Product {
  int quantity;

  PhysicalProducts(String name, double price, String category, this.quantity)
    : super(name, price, category);
}
