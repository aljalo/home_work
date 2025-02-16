void main() {
  print(calculateFinalPrice(1500, 10));
  print(calculateFinalPrice2(1500));
  print(prices(2000, 1750));
}

double calculateFinalPrice(double price, double discount) {
  double finalPrice = price - price * discount / 100;
  return finalPrice;
}

double calculateFinalPrice2(double price2, [double discount2 = 0]) {
  // if (discount2 == null) {
  //   discount2 = 0;
  // }
  double finalPrice2 = price2 - price2 * discount2 / 100;
  return finalPrice2;
}

double prices(double price3, double cost) {
  double finalPrices = price3 - cost;
  return finalPrices;
}
