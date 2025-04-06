import 'package:flutter/material.dart';

abstract class AppColor {
  static const Color primary = Color(0xff2B0063);
  static const Color secondary = Color(0xff8E84FF);
  static const Color black = Color(0xffB8B2FF);
  static const Color mainWhite = Color(0xFFFFFFFF);
  static const Color darkPurple = Color(0xff2B0063); // 30% شفافية
  static const Color violet = Color(0xffA838FF);
  static const Color mainBackground = Color(0xff13142f);
  static const Color darkBlueGray = Color(0xff1A1F37);
  static const Color lightPurple = Color(0xffB8B2FF);
  static const Color paleLavender = Color(0xffC6C2F8);
}

abstract class AppGradients {
  static const RadialGradient mainBackground = RadialGradient(
    center: Alignment(-0.1, -0.1),
    radius: 1,
    colors: [Color(0xff574973), Color(0xff13142f)],
  );

  static const LinearGradient secondaryBackground = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xffB8B2FF), Color(0xffC6C2F8)],
  );
}

abstract class AppTextStyle {
  static const TextStyle h1 = TextStyle(
    fontSize: 32,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.bold,
    color: AppColor.mainWhite,
  );

  static const TextStyle h2 = TextStyle(
    fontSize: 24,
    fontFamily: 'Gilroy',
    //fontWeight: FontWeight.bold,
    color: AppColor.mainWhite,
  );

  static const TextStyle h3 = TextStyle(
    fontSize: 16,
    fontFamily: 'Gilroy',
    color: AppColor.mainWhite,
  );

  static const TextStyle h4 = TextStyle(
    fontSize: 18,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.bold,
    color: AppColor.primary,
  );

  static const TextStyle h5 = TextStyle(
    fontSize: 24,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.bold,
    color: Color(0xff989898),
    //color: Color(0xffCCCCCC),
  );
}
