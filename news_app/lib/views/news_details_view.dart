import 'package:flutter/material.dart';
import 'package:news_app/styles/colors.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsDetails extends StatelessWidget {
  final String url;

  const NewsDetails({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.mainBackground,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('News', style: TextStyle(color: AppColor.primary)),
            Text('Details', style: TextStyle(color: AppColor.secondary)),
          ],
        ),
      ),
      body: WebViewWidget(
        controller: WebViewController()..loadRequest(Uri.parse(url)),
      ),
    );
  }
}
