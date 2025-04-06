import 'package:flutter/material.dart';
import 'package:quiz_app/constatnt.dart';
import 'package:quiz_app/views/start_screen.dart';
import 'package:quiz_app/widgets/custom_back_button.dart';
import 'package:quiz_app/widgets/custom_restartquiz_button.dart';

class ScoreScreen extends StatelessWidget {
  final int correctAnswers;

  const ScoreScreen({Key? key, required this.correctAnswers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      appBar: AppBar(
        iconTheme: IconThemeData(color: (AppColor.paleLavender)),
        backgroundColor: AppColor.primary,
        title: Text("Score", style: AppTextStyle.h1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Correct answere\n $correctAnswers ",
              style: AppTextStyle.h1,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 100),
            CustomBackButton(
              onTap: () {
                Navigator.pop(context);
              },
            ),

            CustomRestartQuizButton(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => StartScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
