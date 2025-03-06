import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/fancy_section.dart';
import '../widgets/info_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(color: Colors.blue.shade100),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  CustomButton(label: "A", color: Colors.red),
                  CustomButton(label: "B", color: Colors.orange),
                  CustomButton(label: "C", color: Colors.yellow),
                ],
              ),

              const SizedBox(height: 10),

              FancySection(),

              const SizedBox(height: 15),

              // Info Cards
              const Text(
                "Info Cards",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InfoCard(number: "23", label: "Active", color: Colors.blue),
                  InfoCard(
                    number: "15",
                    label: "Pending",
                    color: Colors.orange,
                  ),
                  InfoCard(
                    number: "7",
                    label: "Completed",
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
