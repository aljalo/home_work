import 'device.dart';

class Light implements Device {
  @override
  void turnOn() => print("Light is ON");

  @override
  void turnOff() => print("Light is OFF");
}
