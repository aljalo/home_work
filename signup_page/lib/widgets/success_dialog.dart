import 'package:flutter/material.dart';
import 'package:signup_page/views/signin_page.dart';
import 'package:signup_page/widgets/custom_button.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      child: Container(
        height: 500,
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/11.png')),
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 32),
            Text(
              'Congratulations!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Your account has been created successfully.',
              style: TextStyle(
                color: Color(0xff703E6E),
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            CustomButton(
              text: 'Signin',
              color: Colors.black,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SigninPage()),
                );
              },
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
