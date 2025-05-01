import 'dart:ui';

//App Colors
abstract class AppColor {
  static const Color primary = Color(0xffFEC54B);
  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff000000);
  static const Color green = Color(0xFF12B76A);
}

// App Images
abstract class AppImage {
  static const String splashImage = 'assets/images/01.svg';
  static const String onbordingImage1 = 'assets/images/1.png';
  static const String onbordingImage2 = 'assets/images/2.png';
  static const String onbordingImage3 = 'assets/images/3.png';
  static const String loginImage = 'assets/images/login.png';
}

//App Text

abstract class AppText {
  static const String onBordingP1Title1 = 'Welcome to Freash Fruits';
  static const String onBordingP1Title2 = 'Grocery application';
  static const String onBordingP1SubTitle =
      'Discover fresh and organic fruits and vegetables delivered to your door';

  static const String onBordingP2Title1 = 'We provide best quality';
  static const String onBordingP2Title2 = 'Fruits to your family';
  static const String onBordingP2SubTitle =
      'Order in seconds, enjoy fast delivery, and eat healthy every day';

  static const String onBordingP3Title1 = 'Fast and resposibily';
  static const String onBordingP3Title2 = 'delivery by our courir';
  static const String onBordingP3SubTitle =
      'Enjoy the best quality produce at unbeatable prices, anytime, anywhere';
}
