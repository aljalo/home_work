import 'package:flutter/material.dart';

import 'colors.dart';

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
