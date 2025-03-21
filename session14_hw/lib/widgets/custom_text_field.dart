import 'package:flutter/material.dart';
import 'package:session14_hw/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.labelText, this.icon});

  final String labelText;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide(color: kPrimaryColor, width: 2),
        ),
        suffixIcon: icon != null ? Icon(icon) : null,
      ),
    );
  }
}
