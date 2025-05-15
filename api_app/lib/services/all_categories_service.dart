import 'package:api_app/helper/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCategores() async {
    List<dynamic> data = await Api().get(
      url: 'https://fakestoreapi.com/products/categories',
    );
    return data;
  }
}
