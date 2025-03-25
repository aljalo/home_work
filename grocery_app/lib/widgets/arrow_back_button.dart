import 'package:flutter/material.dart';

class ArrowBack extends StatelessWidget {
  const ArrowBack({super.key, required this.pageController});

  final PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible:
          pageController!.hasClients && pageController?.page?.round() == 0
              ? false
              : true,
      child: Positioned(
        top: 50,
        left: 10,
        child: IconButton(
          icon: Icon(Icons.arrow_back, size: 40, color: Colors.orange),
          onPressed: () {
            if (pageController!.hasClients &&
                (pageController?.page?.round() ?? 1) < 3) {
              pageController?.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            }
          },
        ),
      ),
    );
  }
}
