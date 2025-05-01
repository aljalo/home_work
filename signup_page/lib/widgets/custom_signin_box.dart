import 'package:flutter/material.dart';
import 'package:signup_page/main.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class CustomSigninBox extends StatelessWidget {
  const CustomSigninBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const Text(
                  'Signin to your account',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black,
                  ),
                  child: const Icon(Icons.close, color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
            child: CustomTextField(labelText: 'Email'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
            child: CustomTextField(
              labelText: 'Password',
              icon: Icons.visibility_off,
            ),
          ),
          const Center(child: Text('Don`t have an account')),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SignupPage()),
                  );
                },
                child: Text('Sign Up', style: TextStyle(color: Colors.orange)),
              ),
              Text(' or '),
              Text(
                'Login with Phone number',
                style: TextStyle(color: Colors.orange),
              ),
            ],
          ),
          const SizedBox(height: 20),

          CustomButton(text: 'Signin', color: Colors.black, onPressed: () {}),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
