import 'package:flutter/material.dart';

class FancySection extends StatelessWidget {
  final List<Color> boxColors = [
    Colors.purple,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.red,
    Colors.teal,
  ];

  FancySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: Colors.grey.shade300),
      child: Column(
        children: [
          const Text(
            "Fancy Section",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 6,
              mainAxisSpacing: 6,
              childAspectRatio: 1.2,
            ),
            itemCount: 6,
            itemBuilder: (context, index) {
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(color: boxColors[index]),
                child: Text(
                  "${index + 1}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
