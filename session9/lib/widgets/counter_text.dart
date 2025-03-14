import 'package:flutter/material.dart';

class CounterText extends StatelessWidget {
  final int counter;
  final double fontSize;
  final Color boxColor;

  const CounterText({
    super.key,
    required this.counter,
    required this.fontSize,
    required this.boxColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Counter Value',
          style: TextStyle(
            color: boxColor,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            '$counter',
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: boxColor,
            ),
          ),
        ),
      ],
    );
  }
}
