import 'package:flutter/material.dart';
import '../styles/colors.dart';
import '../styles/font_style.dart';

class AnswerButton extends StatefulWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;

  @override
  State<AnswerButton> createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {
  bool isClicked = false;

  void _isClickedController() {
    setState(() {
      isClicked = !isClicked;
    });
    widget.onTap();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _isClickedController,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 350,
          height: 70,
          decoration: BoxDecoration(
            color: isClicked ? AppColor.secondary : AppColor.mainWhite,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Icon(
                  isClicked ? Icons.check_circle : Icons.circle_outlined,
                  size: 32,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(widget.answerText, style: AppTextStyle.h4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
