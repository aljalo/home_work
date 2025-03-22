import 'package:flutter/material.dart';
import 'package:session14_hw/views/onboarding/last_page.dart';
import 'package:session14_hw/widgets/custom_button.dart';
import 'package:session14_hw/widgets/custom_dot_indicator.dart';
import 'package:session14_hw/widgets/custom_page_view.dart';

class OnBordingView extends StatefulWidget {
  const OnBordingView({super.key});

  @override
  State<OnBordingView> createState() => _OnBordingViewState();
}

class _OnBordingViewState extends State<OnBordingView> {
  PageController pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          CustomPageView(pageController: pageController),
          Positioned(
            bottom: 145,
            right: 170,
            child: CustomDotIndicator(
              dotIndex: pageController.hasClients ? pageController.page : 0,
            ),
          ),
          Positioned(
            bottom: 45,
            right: 45,
            child: CustomButton(
              text: 'NEXT',
              color: Colors.black,
              onPressed: () {
                if (pageController.hasClients &&
                    (pageController.page?.round() ?? 0) < 1) {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                } else {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LastPage()),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
