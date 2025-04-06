import 'package:flutter/material.dart';
import 'package:quiz_app/constatnt.dart';

class CustomRestartQuizButton extends StatelessWidget {
  const CustomRestartQuizButton({super.key, required this.onTap});
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
            color: AppColor.secondary,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: AppColor.mainBackground),
              borderRadius: BorderRadius.circular(12),
            ),
            //color: color,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Icon(Icons.arrow_back_ios, color: AppColor.mainWhite),
              Padding(
                padding: const EdgeInsets.symmetric(
                  //vertical: 16,
                  horizontal: 16,
                ),
                child: Text(
                  'Restart',
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
