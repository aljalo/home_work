import 'package:flutter/material.dart';
import 'package:session14_hw/views/login_page.dart';
import 'package:session14_hw/widgets/custom_button.dart';
import 'package:session14_hw/widgets/custom_dot_indicator.dart';

class SplashView3 extends StatelessWidget {
  const SplashView3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/3.png', height: 300, width: 300),
          ListTile(
            title: Text(
              'Fast and resposibily \n delivery by our courir',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                //fontFamily: 'Inter',
              ),
              textAlign: TextAlign.center,
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
              child: Text(
                'Welcome to Freash Fruits Grocery application Welcome to Freash Fruits Grocery application',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 14),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 10),
          CustomDotIndicator(dotPosition: 2),
          SizedBox(height: 30),
          CustomButton(
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
          SizedBox(height: 20),
          CustomButton(
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
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
