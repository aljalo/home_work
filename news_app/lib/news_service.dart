import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    try {
      String apiKey = dotenv.env['API_KEY'] ?? '';
      var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=$apiKey&category=$category',
      );
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}













// import 'package:dio/dio.dart';
// import 'package:news_app/models/article_model.dart';

// class NewsService {
//   final Dio dio;

//   NewsService(this.dio);

//   Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
//     try {
//       var response = await dio.get(
//         'https://newsapi.org/v2/top-headlines?country=us&apiKey=f0857972a3dc49ba86e7aa948682cf4e&category=$category',
//       );
//       Map<String, dynamic> jsonData = response.data;
//       List<dynamic> articles = jsonData['articles'];
//       List<ArticleModel> articlesList = [];

//       for (var article in articles) {
//         ArticleModel articleModel = ArticleModel.fromJson(article);
//         articlesList.add(articleModel);
//       }
//       return articlesList;
//     } catch (e) {
//       return [];
//     }
//   }
// }
