import 'device.dart';

class AirConditioner implements Device {
  double temperature = 24.0;

  @override
  void turnOn() => print("Air Conditioner is ON at $temperature°C");

  @override
  void turnOff() => print("Air Conditioner is OFF");

  void setTemperature(double temp) {
    temperature = temp;
    print("Temperature set to $temperature°C");
  }
}
