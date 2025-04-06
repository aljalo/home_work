import 'package:flutter/material.dart';

class CheckBox extends StatelessWidget {
  const CheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      //padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Icon(Icons.close, size: 32),
    );
  }
}
