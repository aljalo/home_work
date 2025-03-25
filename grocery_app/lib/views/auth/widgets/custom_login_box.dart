import 'package:flutter/material.dart';
import 'package:grocery_app/text_styles.dart';
import '../../home_page.dart';
import '../forgot_password_page.dart';
import '../../../widgets/custom_button.dart';
import 'custom_text_field.dart';

class CustomLoginBox extends StatelessWidget {
  const CustomLoginBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text('Sign In', style: AppTextStyles.header1),
                const Spacer(),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black,
                  ),
                  child: Icon(Icons.close, color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
            child: CustomTextField(labelText: 'Email'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
            child: CustomTextField(
              labelText: 'Password',
              icon: Icons.visibility_off,
            ),
          ),

          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                );
              },
              child: Text('Forgot Password?', style: AppTextStyles.subTitle),
            ),
          ),

          SizedBox(height: 20),
          CustomButton(
            text: 'SIGN IN',
            color: Colors.black,
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
