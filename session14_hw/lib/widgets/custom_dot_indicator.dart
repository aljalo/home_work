import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.dotPosition});
  final double dotPosition;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      //dotsCount: pageLength,
      //position: currentPage,
      decorator: DotsDecorator(
        activeColor: Colors.green,
        size: const Size.square(9.0),
        activeSize: const Size(32.0, 9.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      dotsCount: 3,
      position: dotPosition,
    );
  }
}
