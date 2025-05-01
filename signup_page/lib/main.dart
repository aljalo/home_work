import 'package:flutter/material.dart';
import 'package:signup_page/views/signup_page.dart';

void main() {
  runApp(SignupPage());
}

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SignupView());
  }
}
