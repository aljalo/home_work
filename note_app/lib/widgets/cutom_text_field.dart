import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.maxLines = 1,
    this.onSaved,
    this.onChanged,
  });

  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  final Function(String?)? onChanged;

  @override
  Widget build(context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is Empty';
        } else {
          return null;
        }
      },
      cursorColor: primaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        border: biuldBorder(),
        enabledBorder: biuldBorder(),
        focusedBorder: biuldBorder(primaryColor),
      ),
    );
  }

  OutlineInputBorder biuldBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
