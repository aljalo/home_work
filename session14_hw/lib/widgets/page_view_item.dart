import 'package:flutter/material.dart';

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
        SizedBox(height: 150),
        SizedBox(height: 300, width: 380, child: Image.asset(image)),
        SizedBox(height: 40),
        Text(
          title1,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, ),
        ),

        ListTile(
          title: Text(
            title2,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),

          subtitle: Text(
            subTitle,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
        ),
      ],
    );
  }
}
