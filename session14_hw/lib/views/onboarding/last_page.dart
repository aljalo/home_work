import 'package:flutter/material.dart';
import 'package:session14_hw/constant.dart';
import 'package:session14_hw/views/auth/login_page.dart';
import 'package:session14_hw/widgets/custom_button.dart';
import 'package:session14_hw/widgets/custom_dot_indicator.dart';
import 'package:session14_hw/widgets/page_view_item.dart';

class LastPage extends StatelessWidget {
  const LastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageViewItem(
            image: AppImage.onbordingImage3,
            title1: AppText.onBordingP3Title1,
            title2: AppText.onBordingP3Title2,
            subTitle:
                AppText.onBordingP3SubTitle,
          ),
          Positioned(
            bottom: 215,
            right: 170,
            child: CustomDotIndicator(dotIndex: 2),
          ),
          Positioned(
            bottom: 125,
            right: 45,
            child: CustomButton(
              backgroundColor: Colors.black,
              borderSideColor: Colors.black,
              text: 'CREATE AN ACCOUNT',
              color: Colors.white,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
            ),
          ),

          Positioned(
            bottom: 45,
            right: 45,
            child: CustomButton(
              backgroundColor: Colors.white,
              borderSideColor: Colors.black,

              text: 'LOGIN',
              color: Colors.black,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
