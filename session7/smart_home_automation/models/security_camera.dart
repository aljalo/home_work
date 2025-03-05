import 'device.dart';

class SecurityCamera implements Device {
  bool motionDetection = false;

  @override
  void turnOn() => print("Security Camera is ON");

  @override
  void turnOff() => print("Security Camera is OFF");

  void enableMotionDetection() {
    motionDetection = true;
    print("Motion detection enabled");
  }
}
