import 'package:access_hub/pages/auth_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const AccessHub());
}

class AccessHub extends StatelessWidget {
  const AccessHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: AuthScreen());
  }
}
