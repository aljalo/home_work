import 'package:flutter/material.dart';
import '../../constant/constant.dart';

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
          borderSide: BorderSide(color: AppColor.primary, width: 2),
        ),
        suffixIcon: icon != null ? Icon(icon) : null,
      ),
    );
  }
}
