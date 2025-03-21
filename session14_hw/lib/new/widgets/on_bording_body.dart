import 'package:flutter/material.dart';
import 'package:session14_hw/constant.dart';
import 'package:session14_hw/new/widgets/custom_page_view.dart';
import 'package:session14_hw/widgets/custom_button.dart';

class OnBordingViewBody extends StatelessWidget {
  const OnBordingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(),
        Positioned(
          bottom: 50,
          right: 45,
          child: CustomButton(
            text: 'NEXT',
            color: kPrimaryColor,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
