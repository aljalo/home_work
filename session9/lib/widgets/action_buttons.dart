import 'package:flutter/material.dart';
import 'color_button.dart';
import 'size_button.dart';

class ActionButtons extends StatelessWidget {
  final VoidCallback changeColor;
  final VoidCallback changeSize;
  final Color boxColor;

  const ActionButtons({
    super.key,
    required this.changeColor,
    required this.changeSize,
    required this.boxColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ColorButton(changeColor: changeColor, boxColor: boxColor),
        const SizedBox(width: 10),
        SizeButton(changeSize: changeSize, boxColor: boxColor),
      ],
    );
  }
}
