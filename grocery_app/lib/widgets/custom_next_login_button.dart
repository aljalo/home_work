import 'package:flutter/material.dart';
import '../constant.dart';
import '../views/auth/login_page.dart';
import 'custom_button.dart';

class CustomNextAndLoginButton extends StatelessWidget {
  const CustomNextAndLoginButton({super.key, required this.pageController});

  final PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 45,
      right: 45,
      child: CustomButton(
        backgroundColor:
            pageController!.hasClients && pageController?.page?.round() == 2
                ? AppColor.white
                : AppColor.primary,
        borderSideColor:
            pageController!.hasClients && pageController?.page?.round() == 2
                ? AppColor.black
                : AppColor.primary,
        text:
            pageController!.hasClients && pageController?.page?.round() == 2
                ? 'SIGN IN'
                : 'NEXT',
        color: Colors.black,
        onPressed: () {
          if (pageController!.hasClients &&
              (pageController?.page?.round() ?? 0) < 2) {
            pageController?.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          }
        },
      ),
    );
  }
}
