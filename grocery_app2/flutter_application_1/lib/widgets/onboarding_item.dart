import 'package:flutter/material.dart';
import '../models/onboarding_item_model.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({super.key, required this.items});
  final OnboardingItemModel items;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(items.image),
        Text(items.title),
        Text(items.subTitle),
      ],
    );
  }
}
