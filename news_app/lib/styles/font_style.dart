import 'package:flutter/material.dart';
import 'colors.dart';

abstract class AppTextStyle {
  static const TextStyle h1 = TextStyle(
    color: AppColor.primary,
  );

  static const TextStyle h2 = TextStyle(
    color: AppColor.secondary,
  );

  static const TextStyle h3 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColor.primary,
  );

  static const TextStyle h4 = TextStyle(
    fontSize: 14,
    color: AppColor.subTitle,
  );
    static const TextStyle h5 = TextStyle(
    fontSize: 16,
    color: AppColor.mainBackground,
  );

  // static const TextStyle h5 = TextStyle(
  //   fontSize: 24,
  //   fontFamily: 'Gilroy Bold',
  //   fontWeight: FontWeight.bold,
  //   color: AppColor.primary,
  //   Color(0xff989898),
  //   color: Color(0xffCCCCCC),
  // );
}
