import 'package:flutter/material.dart';
import '../constant.dart';
import '../views/auth/sign_up_page.dart';

class CreatAccountButton extends StatelessWidget {
  const CreatAccountButton({super.key, required this.pageController});

  final PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible:
          pageController!.hasClients && pageController?.page?.round() == 2
              ? true
              : false,
      child: Positioned(
        bottom: 125,
        right: 45,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,

            fixedSize: Size(318, 60),
            backgroundColor: AppColor.black,
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => SignUpPage()),
            );
          },
          child: Text(
            'CREATE ACCOUNT',
            style: TextStyle(
              color: AppColor.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
