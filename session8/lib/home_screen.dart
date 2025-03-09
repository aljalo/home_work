import 'package:flutter/material.dart';
import 'package:session8/widgets/about_section.dart';
import 'package:session8/widgets/app_bar.dart';
import 'package:session8/widgets/header_image.dart';
import 'package:session8/widgets/location_info.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [HeaderImage(), LocationInfoCard(), AboutSection()],
        ),
      ),
    );
  }
}
