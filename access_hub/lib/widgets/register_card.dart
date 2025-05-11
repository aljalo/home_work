import 'package:flutter/material.dart';
import '../auth_service.dart';

class RegisterCard extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final authService = AuthService();

  RegisterCard({super.key});

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
              await authService.registerUser(emailController.text, passwordController.text);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('تم إنشاء الحساب بنجاح!')),
              );
              Navigator.pop(context); // الرجوع للواجهة السابقة
            } catch (e) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('فشل التسجيل: ${e.toString()}')),
              );
            }
          },
          child: Text('تسجيل'),
        )
      ],
    );
  }
}
