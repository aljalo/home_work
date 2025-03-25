import 'package:flutter/material.dart';
import '../../constant.dart';
import 'widgets/custom_login_box.dart';

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

            child: SizedBox(child: Image.asset(AppImage.loginImage)),
          ),
          Positioned(top: 400, left: 0, right: 0, child: CustomLoginBox()),
        ],
      ),
    );
  }
}
