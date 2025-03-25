import 'package:flutter/material.dart';
import 'package:grocery_app/text_styles.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.title1,
    required this.title2,
    required this.subTitle,
  });

  final String image;
  final String title1;
  final String title2;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 300, child: Image.asset(image)),
        SizedBox(height: 40),
        Text(title1, style: AppTextStyles.header1),
        Text(title2, style: AppTextStyles.header1),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: AppTextStyles.subTitle,
          ),
        ),
      ],
    );
  }
}
