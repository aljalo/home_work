import 'package:flutter/material.dart';
import 'package:signup_page/widgets/custom_signup_box.dart';
import '../../../constant/constant.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

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
          Positioned(top: 300, left: 0, right: 0, child: CustomSignupBox()),
        ],
      ),
    );
  }
}
