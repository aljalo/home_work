import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({
    super.key,
    required this.boxColor,
    required this.counter,
  });

  final Color boxColor;
  final int counter;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: 220,
      height: 100,
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(15),
      ),
      alignment: Alignment.center,
      child: Text(
        counter % 2 == 0 ? 'Even: $counter' : 'Odd: $counter',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
