import 'package:flutter/material.dart';
import 'package:session14_hw/views/splash_view3.dart';

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
            title: Center(
              child: Text(
                'We provide best quality \n Fruits to your family',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            subtitle: Center(
              child: Text(
                'Welcome to Freash Fruits Grocery application \n Welcome to Freash Fruits Grocery application',
                maxLines: 2,
              ),
            ),
          ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(318, 60),
              backgroundColor: Color(0xffFEC54B),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const SplashView3()),
              );
            },
            child: Text(
              'NEXT',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
