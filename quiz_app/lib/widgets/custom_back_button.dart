import 'package:flutter/material.dart';
import '../styles/colors.dart';
import '../styles/font_style.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key, required this.onTap});
   final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          //color: backgroundColor,
          width: 140,
          height: 55,
          decoration: ShapeDecoration(
            color: AppColor.mainBackground,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: AppColor.secondary),
              borderRadius: BorderRadius.circular(12),
            ),
            //color: color,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.arrow_back_ios, color: AppColor.mainWhite),
              Padding(
                padding: const EdgeInsets.symmetric(
                  //vertical: 16,
                  horizontal: 16,
                ),
                child: Text(
                  'Back',
                  style: AppTextStyle.h2,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
