import 'package:api_app/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {HomePage.id: (context) => HomePage()},
      initialRoute: HomePage.id,
    );
  }
}
