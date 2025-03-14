import 'package:flutter/material.dart';

class SizeButton extends StatelessWidget {
  final VoidCallback changeSize;
  final Color boxColor;

  const SizeButton({
    super.key,
    required this.changeSize,
    required this.boxColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: changeSize,
      icon: const Icon(Icons.format_size),
      label: Text("Change Size", style: TextStyle(color: boxColor)),
    );
  }
}
