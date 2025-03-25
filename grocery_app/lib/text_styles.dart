import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static const TextStyle header1 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    fontFamily: 'Inter',
    //color: Colors.red,
  );
  static const TextStyle bottunTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontFamily: 'Inter',
    color: Colors.black,
  );
  static const TextStyle subTitle = TextStyle(
    fontSize: 14,
    fontFamily: 'Poppins',
    //color: Colors.red,
  );
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
