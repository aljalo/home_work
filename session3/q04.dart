/* 4. Weather Report:
Use Map and List to create a program that stores weather data for different cities (temperature,
humidity, etc.). Write a function that can retrieve and print weather details using a city name. */

void main() {
  Map<String, String> weatherData = {
    "Baghdad": "Temperature: 40°C, Humidity: 20%",
  };

  printWeather("Baghdad", weatherData);
}

void printWeather(String city, Map<String, String> weatherData) {
  print({city, weatherData[city]});
}
