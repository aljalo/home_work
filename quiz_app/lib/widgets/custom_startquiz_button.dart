import 'package:flutter/material.dart';
import '../styles/colors.dart';
import '../styles/font_style.dart';

class CustomStartButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomStartButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        fixedSize: Size(380, 65),
        backgroundColor: AppColor.mainWhite,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Text(text, style: AppTextStyle.h5),
    );
  }
}
