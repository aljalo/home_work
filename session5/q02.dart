/*
Temperature Converter
Write a function that converts temperature from Celsius to Fahrenheit and vice versa.
Accept temperature value and unit ('C' for Celsius, 'F' for Fahrenheit) as inputs.
Convert accordingly and return the result.
*/
double temperatureConverter(double value, String unit) {
  if (unit == 'C') {
    return (value * 9 / 5) + 32;
  } else if (unit == 'F') {
    return (value - 32) * 5 / 9;
  } else {
    throw Exception('Wrong Enter');
  }
}

void main() {
  print(temperatureConverter(50, 'F'));
  print(temperatureConverter(20, 'C'));
}
