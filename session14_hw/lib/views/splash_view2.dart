import 'package:flutter/material.dart';
import 'package:session14_hw/views/splash_view3.dart';
import 'package:session14_hw/widgets/custom_button.dart';
import 'package:session14_hw/widgets/custom_dot_indicator.dart';

class SplashView2 extends StatelessWidget {
  const SplashView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/welcome.png'),
          ListTile(
            title: Text(
              'We provide best quality \n Fruits to your family',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),

            subtitle: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Text(
                'Welcome to Freash Fruits Grocery application Welcome to Freash Fruits Grocery application',
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 30),
          CustomDotIndicator(dotPosition: 1),
          SizedBox(height: 20),
          CustomButton(
            //backgroundColor: kPrimaryColor,
            text: 'NEXT',
            color: Colors.black,
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const SplashView3()),
              );
            },
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
