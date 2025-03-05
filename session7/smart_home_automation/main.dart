import 'models/light.dart';
import 'models/air_conditioner.dart';
import 'models/security_camera.dart';
import 'models/smart_home.dart';

void main() {
  Light light = Light();
  AirConditioner ac = AirConditioner();
  SecurityCamera camera = SecurityCamera();

  SmartHome home = SmartHome();
  home.addDevice(light);
  home.addDevice(ac);
  home.addDevice(camera);

  home.turnAllOn();

  ac.setTemperature(22.5);
  camera.enableMotionDetection();

  home.turnAllOff();
}
