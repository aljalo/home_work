import 'products.dart';

class DigitalProducts extends Product {
  double downloadTimes;
  DigitalProducts(
    String name,
    double price,
    String category,
    this.downloadTimes,
  ) : super(name, price, category);
}
