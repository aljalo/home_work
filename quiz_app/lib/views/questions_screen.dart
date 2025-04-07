import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/custom_answer_button.dart';
import 'package:quiz_app/views/score_screen.dart';
import 'package:quiz_app/widgets/custom_back_button.dart';
import 'package:quiz_app/widgets/custom_forword_button.dart';
import 'package:quiz_app/widgets/custom_widget.dart';
import 'package:quiz_app/models/question_model.dart';
import '../styles/colors.dart';
import '../styles/font_style.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  late QuestionsItemModel currentItem; // score
  var currentQuestionIndex = 0;
  int correctAnswers = 0;
  PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    currentItem = getQuestionsItemModel()[currentQuestionIndex]; // score
    _pageController = PageController(); // score
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onAnswerTap(String selectedAnswer) {
    final currentQuestion = getQuestionsItemModel()[currentQuestionIndex];
    if (currentQuestion.checkAnswer(selectedAnswer)) {
      setState(() {
        correctAnswers++;
      });
    }
  }

  //  score
  void showResults() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (context) => ScoreScreen(
              correctAnswers: correctAnswers,
              //totalQuestions: getQuestionsItemModel().length,
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = getQuestionsItemModel()[currentQuestionIndex];

    return Scaffold(
      backgroundColor: AppColor.mainBackground,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 80),
          Expanded(
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentQuestionIndex = value;
                });
              },
              controller: _pageController,
              itemCount: getQuestionsItemModel().length,
              itemBuilder: (context, index) {
                final currentQuestion = getQuestionsItemModel()[index];
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomWidget(
                        //image: 'assets/images/01.svg',
                        image: images[index],
                        qNumber: 'Question ${index + 1}',
                      ),
                      SizedBox(height: 20),
                      Text(currentQuestion.question, style: AppTextStyle.h1),
                      SizedBox(height: 20),
                      //...currentQuestion.getShuffledAnswers().map((answer) {
                      ...currentQuestion.options.map((answer) {
                        return AnswerButton(
                          answerText: answer,
                          onTap: () {
                            onAnswerTap(answer);
                          },
                        );
                      }),
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomBackButton(
                onTap: () {
                  if (currentQuestionIndex > 0) {
                    _pageController.previousPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  }
                },
              ),
              SizedBox(width: 60),
              CustomForwordButton(
                onTap: () {
                  if (currentQuestionIndex <
                      getQuestionsItemModel().length - 1) {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  } else {
                    showResults();
                  }
                },
              ),
            ],
          ),
          SizedBox(height: 60),
        ],
      ),
    );
  }
}
