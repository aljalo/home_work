abstract class Product {
  String name;
  double price;
  String category;

  Product(this.name, this.price, this.category);

  double getPriceWithDiscount() {
    return price;
  }
}
