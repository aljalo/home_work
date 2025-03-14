import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color boxColor;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.boxColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      height: 56,
      child: FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: boxColor,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add, color: Colors.white),
            SizedBox(width: 5),
            Text(
              "Increment",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
