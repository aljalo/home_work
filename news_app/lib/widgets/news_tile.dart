import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/styles/font_style.dart';
import 'package:news_app/views/news_details_view.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (articleModel.url != null && articleModel.url!.isNotEmpty) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NewsDetails(url: articleModel.url!),
            ),
          );
        }
      },

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              imageUrl: articleModel.image ?? '',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              placeholder:
                  (context, url) => Container(
                    height: 200,
                    color: Colors.grey[300],
                    child: Center(child: CircularProgressIndicator()),
                  ),
              errorWidget:
                  (context, url, error) => Container(
                    height: 200,
                    color: Colors.grey[300],
                    child: Icon(Icons.broken_image, size: 40),
                  ),
            ),
          ),
          SizedBox(height: 12),
          Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyle.h3,
          ),
          SizedBox(height: 8),
          Text(
            articleModel.subTitle ?? '',
            maxLines: 2,
            style: AppTextStyle.h4,
          ),
        ],
      ),
    );
  }
}

// @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         ClipRRect(
//   borderRadius: BorderRadius.circular(8),
//   child: CachedNetworkImage(
//     imageUrl: articleModel.image ?? '',
//     height: 200,
//     width: double.infinity,
//     fit: BoxFit.cover,
//     placeholder: (context, url) => Container(
//       height: 200,
//       color: Colors.grey[300],
//       child: Center(child: CircularProgressIndicator()),
//     ),
//     errorWidget: (context, url, error) => Container(
//       height: 200,
//       color: Colors.grey[300],
//       child: Icon(Icons.broken_image, size: 40),
//     ),
//   ),
// ),
//         SizedBox(height: 12),
//         Text(
//           articleModel.title,
//           maxLines: 2,
//           overflow: TextOverflow.ellipsis,
//           style: AppTextStyle.h3
//         ),
//         SizedBox(height: 8),
//         Text(
//           articleModel.subTitle ?? '',
//           maxLines: 2,
//           style: AppTextStyle.h4
//         ),
//       ],
//     );
//   }
// }
