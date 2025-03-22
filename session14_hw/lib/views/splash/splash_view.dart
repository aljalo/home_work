import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:session14_hw/constant.dart';
import 'package:session14_hw/views/onboarding/onbording_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnBordingView()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEC54B),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          SizedBox(width: double.infinity),
          SvgPicture.asset(AppImage.splashImage),
        ],
      ),
    );
  }
}
