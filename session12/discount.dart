class Discount {
  double percentage;
  Discount(this.percentage);

  double applyDiscount(double price) {
    return price - (price * (percentage / 100));
  }
}
