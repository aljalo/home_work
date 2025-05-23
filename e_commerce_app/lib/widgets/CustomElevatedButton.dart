import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        // Example: consistent button styling
        minimumSize: const Size(double.infinity, 50), // Full width button
        padding: const EdgeInsets.symmetric(vertical: 12),
      ),
      child: Text(text),
    );
  }
}