import 'package:flutter/material.dart';

class ColorButton extends StatelessWidget {
  final VoidCallback changeColor;
  final Color boxColor;

  const ColorButton({
    super.key,
    required this.changeColor,
    required this.boxColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: changeColor,
      icon: const Icon(Icons.color_lens),
      label: Text("Change Color", style: TextStyle(color: boxColor)),
    );
  }
}
