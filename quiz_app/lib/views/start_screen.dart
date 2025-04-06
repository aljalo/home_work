import 'package:flutter/material.dart';
import 'package:quiz_app/constatnt.dart';
import 'package:quiz_app/views/questions_screen.dart';


import 'package:quiz_app/widgets/custom_startquiz_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppGradients.mainBackground),
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80),
              Text('Good Morning,', style: AppTextStyle.h2),
              SizedBox(height: 16),
              Text('New topic is waiting', style: AppTextStyle.h1),
              Spacer(),
              CustomStartButton(
                text: 'Start Quiz',
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => QuestionScreen()),
                  );
                },
              ),
              SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
