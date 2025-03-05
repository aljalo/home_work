import 'device.dart';

class SmartHome {
  List<Device> devices = [];

  void addDevice(Device device) => devices.add(device);

  void turnAllOn() {
    for (var device in devices) {
      device.turnOn();
    }
  }

  void turnAllOff() {
    for (var device in devices) {
      device.turnOff();
    }
  }
}
