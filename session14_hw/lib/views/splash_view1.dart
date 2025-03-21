import 'package:flutter/material.dart';
import 'package:session14_hw/views/splash_view2.dart';
import 'package:session14_hw/widgets/custom_button.dart';
import 'package:session14_hw/widgets/custom_dot_indicator.dart';

class SplashView1 extends StatelessWidget {
  const SplashView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/2.png'),
          SizedBox(height: 70),
          Text(
            'Welcome to Freash Fruits',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          ListTile(
            title: Text(
              'Grocery application',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                //fontFamily: 'Inter',
              ),
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
          CustomDotIndicator(dotPosition: 0),
          SizedBox(height: 20),
          CustomButton(
            text: 'NEXT',
            color: Colors.black,
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const SplashView2()),
              );
            },
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
