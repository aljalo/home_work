import 'package:flutter/material.dart';
import '../widgets/dots_indicator.dart';
import '../onboarding_action_buttons.dart';
import '../widgets/onboarding_item.dart';
import '../models/onboarding_item_model.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  late OnboardingItemModel currentItem;
  int currentIndex = 0;

  late PageController pageController;
  @override
  void initState() {
    super.initState();
    currentItem = getOnboardingItems()[currentIndex];
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      ),

      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(flex: 1),
          Expanded(
            flex: 2,
            child: PageView.builder(
              onPageChanged: (value) {
                currentIndex = value;
                setState(() {});
              },
              controller: pageController,
              itemBuilder: (context, index) {
                return OnboardingItem(items: getOnboardingItems()[index]);
              },
            ),
          ),
          SizedBox(height: 24),
          DotsIndicator(currentIndex: currentIndex),
          SizedBox(height: 16),

          OnboardingActionButtons(
            currentIndex: currentIndex,
            totalItems: getOnboardingItems().length,
            pageController: pageController,
          ),
          SizedBox(height: 45),
        ],
      ),
    );
  }
}
