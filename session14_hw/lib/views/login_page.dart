import 'package:flutter/material.dart';
import 'package:session14_hw/widgets/custom_login_box.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,

            child: Image.asset('assets/images/login.png'),
          ),
          Positioned(top: 250, left: 0, right: 0, child: Login_box()),
        ],
      ),
    );
  }
}
