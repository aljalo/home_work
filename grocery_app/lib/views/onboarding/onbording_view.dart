import 'package:flutter/material.dart';
import '../../widgets/arrow_back_button.dart';
import '../../widgets/creat_account_button.dart';
import '../../widgets/custom_dot_indicator.dart';
import '../../widgets/custom_next_login_button.dart';
import '../../widgets/custom_page_view.dart';

class OnBordingView extends StatefulWidget {
  const OnBordingView({super.key});

  @override
  State<OnBordingView> createState() => _OnBordingViewState();
}

class _OnBordingViewState extends State<OnBordingView> {
  PageController? pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0)..addListener(() {
      setState(() {
        currentPage = pageController!.page?.round() ?? 0;
      });
    });
  //
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        currentPage = pageController!.page?.round() ?? 0;
      });
    });
  }
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                //curve: Curves.bounceIn,
                padding: EdgeInsets.only(
                  top:
                      (pageController!.hasClients &&
                              (pageController?.page?.round() ?? 0) < 2)
                          ? 200
                          : 100,
                ),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: Align(
                    alignment: Alignment.center,
                    child: CustomPageView(pageController: pageController),
                  ),
                ),
              ),
            ],
          ),
          ArrowBack(pageController: pageController),
          Positioned(
            bottom:
                pageController!.hasClients && pageController?.page?.round() == 2
                    ? 220
                    : 140,
            right: 140,
            child: CustomDotIndicator(
              dotIndex: pageController!.hasClients ? pageController?.page : 0,
            ),
          ),
          CreatAccountButton(pageController: pageController),
          CustomNextAndLoginButton(pageController: pageController),
        ],
      ),
    );
  }
}
