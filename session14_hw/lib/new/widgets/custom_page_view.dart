import 'package:flutter/material.dart';
import 'package:session14_hw/new/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
          image: 'assets/images/2.png',
          title1: 'Welcome to Freash Fruits',
          title2: 'Grocery application',
          subTitle:
              'Welcome to Freash Fruits Grocery application Welcome to Freash Fruits Grocery application',
        ),
        // PageViewItem(
        //   image: 'assets/images/welcome.png',
        //   title1: 'We provide best quality',
        //   title2: 'Fruits to your family',
        //   subTitle:
        //       'Welcome to Freash Fruits Grocery application Welcome to Freash Fruits Grocery application',
        // ),
      ],
    );
  }
}
