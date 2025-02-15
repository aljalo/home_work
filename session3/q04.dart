/* 4. Weather Report:
Use Map and List to create a program that stores weather data for different cities (temperature,
humidity, etc.). Write a function that can retrieve and print weather details using a city name. */

class WeatherReport {
  Map<String, Map<String, dynamic>> weatherData = {};
  void addCityWeather(String city, double temperature, int humidity) {
    weatherData[city] = {
      'temperature': temperature,
      'humidity': humidity,
    };
  }

  void getWeather(String city) {
    print(city);
  }
}
