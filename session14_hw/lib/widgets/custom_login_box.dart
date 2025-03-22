import 'package:flutter/material.dart';
import 'package:session14_hw/widgets/custom_button.dart';
import 'package:session14_hw/widgets/custom_text_field.dart';

class Login_box extends StatelessWidget {
  const Login_box({super.key});

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
                Text(
                  'Create you account',
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
                  child: Icon(Icons.close, color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            child: Row(
              children: [
                Expanded(child: CustomTextField(labelText: 'First Name')),
                const SizedBox(width: 10),
                Expanded(child: CustomTextField(labelText: 'Last Name')),
              ],
            ),
          ),
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

          Center(child: Text('By tapping Sign up you accept all')),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('terms', style: TextStyle(color: Colors.orange)),
              Text(' and '),
              Text('condition', style: TextStyle(color: Colors.orange)),
            ],
          ),
          SizedBox(height: 20),
          CustomButton(
            text: 'CREATE AN ACOUNT',
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
