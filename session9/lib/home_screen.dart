import 'dart:math';
import 'package:flutter/material.dart';
import 'package:session9/widgets/action_buttons.dart';
import 'package:session9/widgets/counter_display.dart';
import 'package:session9/widgets/counter_text.dart';
import 'package:session9/widgets/custom_button.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  Color boxColor = Colors.orange;
  double fontSize = 12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: boxColor,
        title: const Text(
          'Interactive UI Demo',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [boxColor, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CounterDisplay(counter: counter, boxColor: boxColor),
            const SizedBox(height: 20),
            CounterText(
              counter: counter,
              fontSize: fontSize,
              boxColor: boxColor,
            ),
            const SizedBox(height: 20),
            ActionButtons(
              changeColor: () {
                setState(() {
                  boxColor = Color(
                    (Random().nextDouble() * 0xFFFFFF).toInt(),
                  ).withOpacity(1.0);
                });
              },
              changeSize: () {
                setState(() {
                  fontSize = Random().nextInt(20) + 16.0;
                });
              },
              boxColor: boxColor,
            ),
          ],
        ),
      ),
      floatingActionButton: CustomButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        boxColor: boxColor,
      ),
    );
  }
}
