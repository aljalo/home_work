import 'package:flutter/material.dart';
import '../../constant.dart';
import 'widgets/custom_signup_box.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
          Positioned(top: 300, left: 0, right: 0, child: CustomSignUpBox()),
        ],
      ),
    );
  }
}
