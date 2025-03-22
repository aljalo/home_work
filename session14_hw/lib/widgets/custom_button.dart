import 'package:flutter/material.dart';
import 'package:session14_hw/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    required this.onPressed,
    this.backgroundColor = AppColor.primary,
    this.borderSideColor = AppColor.primary,
  });
  final String text;
  final Color color;
  final Color backgroundColor;
  final Color borderSideColor;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        side: BorderSide(color: borderSideColor),
        fixedSize: Size(318, 60),
        backgroundColor: backgroundColor,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: color,
        ),
      ),
    );
  }
}
