import 'package:flutter/material.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'images/832-386766.jpg',
          width: double.infinity,
          height: 200,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.photo_camera, color: Colors.white),
            label: Text("Gallery"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black54,
              foregroundColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
