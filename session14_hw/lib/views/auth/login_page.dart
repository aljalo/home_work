import 'package:flutter/material.dart';
import 'package:session14_hw/constant.dart';
import 'package:session14_hw/widgets/custom_login_box.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,

            child: Image.asset(AppImage.loginImage),
          ),
          Positioned(top: 300, left: 0, right: 0, child: Login_box()),
        ],
      ),
    );
  }
}
