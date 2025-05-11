import 'package:flutter/material.dart';
import '../auth_service.dart';
import '../pages/home_page.dart';

class LoginCard extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final authService = AuthService();

  LoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(controller: emailController, decoration: InputDecoration(labelText: 'البريد')),
        TextField(controller: passwordController, obscureText: true, decoration: InputDecoration(labelText: 'كلمة المرور')),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () async {
            try {
              await authService.loginUser(emailController.text, passwordController.text);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => HomePage()),
              );
            } catch (e) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('خطأ في تسجيل الدخول: ${e.toString()}')),
              );
            }
          },
          child: Text('تسجيل الدخول'),
        )
      ],
    );
  }
}
