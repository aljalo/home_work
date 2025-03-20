import 'package:flutter/material.dart';
import 'package:session14_hw/views/login_page.dart';

class SplashView3 extends StatelessWidget {
  const SplashView3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/3.png'),
          ListTile(
            title: Center(
              child: Text(
                'Fast and resposibily \n delivery by our courir',
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
          SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(318, 60),
              backgroundColor: Colors.black,
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
            child: Text(
              'CREATE AN ACCOUNT',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(318, 60),
              backgroundColor: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
            child: Text(
              'LOGIN',
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
