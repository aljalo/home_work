import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  Color boxColor = Colors.orange;
  //double boxSize = 100.0;
  double fontSize = 12;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void changeColor() {
    setState(() {
      boxColor = Color(
        (Random().nextDouble() * 0xFFFFFF).toInt(),
      ).withOpacity(1.0);
    });
  }

  // void changeSize() {
  //   setState(() {
  //     boxSize = Random().nextInt(100) + 100.0;
  //   });
  // }

  // void changeFontSize() {
  //   setState(() {
  //    fontSize =  Random().nextInt(100) + 100.0;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: boxColor,
        title: Text(
          'Interactive UI Demo',
          style: TextStyle(color: Colors.white),
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
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              width: 250,
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
            ),
            SizedBox(height: 20),
            Text('Counter Value', style: TextStyle(color: boxColor)),
            //SizedBox(height: 10),
            Text(
              '$counter',
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: boxColor,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: changeColor,
                  icon: Icon(Icons.color_lens),
                  label: Text(
                    "Change Color",
                    style: TextStyle(color: boxColor),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton.icon(
                  onPressed: changeFontSize,
                  icon: Icon(Icons.format_size),
                  label: Text("Change Size", style: TextStyle(color: boxColor)),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: incrementCounter,
              style: ElevatedButton.styleFrom(
                backgroundColor: boxColor,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: Text(
                "+ Increment",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
