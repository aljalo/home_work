import 'package:flutter/material.dart';
import 'package:session14_hw/constant.dart';
import 'package:session14_hw/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          image: AppImage.onbordingImage1,
          title1: AppText.onBordingP1Title1,
          title2: AppText.onBordingP1Title2,
          subTitle:
              AppText
                  .onBordingP1SubTitle,
        ),
        PageViewItem(
          image: AppImage.onbordingImage2,
          title1: AppText.onBordingP2Title1,
          title2: AppText.onBordingP2Title2,
          subTitle:
              AppText.onBordingP2SubTitle,
        ),
        // PageViewItem(
        //   image: AppImage.onbordingImage3,
        //   title1: AppText.onBordingP3Title1,
        //   title2: AppText.onBordingP3Title2,
        //   subTitle: AppText.onBordingP3SubTitle,
        // ),
      ],
    );
  }
}
