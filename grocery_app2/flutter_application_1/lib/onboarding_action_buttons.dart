import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/onboarding_item_model.dart';
import 'widgets/custom_button.dart';

class OnboardingActionButtons extends StatelessWidget {
  final int currentIndex;
  final int totalItems;
  final PageController pageController;
  final VoidCallback? onCreateAccountPressed;
  final VoidCallback? onLoginPressed;

  const OnboardingActionButtons({
    super.key,
    required this.currentIndex,
    required this.totalItems,
    required this.pageController,
    this.onCreateAccountPressed,
    this.onLoginPressed,
  });

  @override
  Widget build(BuildContext context) {
    return currentIndex < totalItems - 1
        ? CustomButton(
          text: 'Next',
          onPressed: () {
            if (currentIndex < getOnboardingItems().length - 1) {
              pageController.nextPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            }
          },
        )
        : Column(
          children: [
            CustomButton(
              text: 'Create Account',
              onPressed: onCreateAccountPressed ?? () {},
            ),
            SizedBox(height: 16),
            CustomButton(text: 'Login', onPressed: onLoginPressed ?? () {}),
          ],
        );
    // return currentIndex < getBoardingItems().length - 1
    //           ? CustomButton(
    //             text: 'Next',
    //             onPressed: () {
    //               if (currentIndex < getOnboardingItems().length - 1) {
    //                 pageController.nextPage(
    //                   duration: Duration(seconds: 3),
    //                   curve: Curves.easeIn,
    //                 );
    //               }
    //             },
    //           )
    //           : Column(
    //             children: [
    //               CustomButton(text: 'Create Account', onPressed: () {}),
    //               CustomButton(text: 'Login', onPressed: () {}),
    //             ],
    //           ),;
  }
}
