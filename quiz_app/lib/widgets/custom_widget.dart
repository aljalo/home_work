import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../styles/colors.dart';
import '../styles/font_style.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key, required this.qNumber, required this.image});
  final String image;
  final String qNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 140,
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.paleLavender),
        borderRadius: BorderRadius.circular(24),
        color: AppColor.secondary,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Image.asset('assets/images/question_number.png', height: 25),
          //SvgPicture.asset('assets/images/01.svg', height: 25),
          SvgPicture.asset(image, height: 25),
          SizedBox(width: 10),
          Text(qNumber, style: AppTextStyle.h3),
        ],
      ),
    );
  }
}
