import 'package:flutter/material.dart';
import 'package:session9/home_screen.dart';

void main() {
  runApp(SetState());
}

class SetState extends StatelessWidget {
  const SetState({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}
