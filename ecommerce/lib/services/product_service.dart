
import 'package:dio/dio.dart';
import '../models/product_model.dart';

class ProductService {
  final Dio _dio = Dio();
  final String baseUrl = 'https://api.escuelajs.co/api/v1/products';

  Future<List<ProductModel>> getProducts() async {
    final response = await _dio.get(baseUrl);
    return (response.data as List).map((e) => ProductModel.fromJson(e)).toList();
  }

  Future<void> deleteProduct(int id) async {
    await _dio.delete('$baseUrl/$id');
  }

  Future<void> addProduct(ProductModel product) async {
    await _dio.post(baseUrl, data: product.toJson());
  }

  Future<void> updateProduct(int id, ProductModel product) async {
    await _dio.put('$baseUrl/$id', data: product.toJson());
  }
}
