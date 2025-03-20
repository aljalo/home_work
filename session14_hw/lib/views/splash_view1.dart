import 'package:flutter/material.dart';
import 'package:session14_hw/views/splash_view2.dart';

class SplashView1 extends StatelessWidget {
  const SplashView1({super.key});

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
                'Welcome to Freash Fruits \n Grocery application',
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
                MaterialPageRoute(builder: (context) => const SplashView2()),
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
