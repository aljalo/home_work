import 'package:e_commerce_app_new/helper/api.dart';
import 'package:e_commerce_app_new/models/product_model.dart';

class ProductService {
  final Api _api;
  final String baseUrl = 'https://api.escuelajs.co/api/v1/products';

  ProductService() : _api = Api(); 

  Future<List<ProductModel>> getProducts() async {
    try {
      final List<dynamic> data = await _api.get(url: baseUrl);
      return data.map((json) => ProductModel.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to load products: $e');
    }
  }

  Future<ProductModel> addProduct(ProductModel product) async {
    try {
      final dynamic responseData = await _api.post(
        url: baseUrl,
        body: product.toJson(), 
      );
      return ProductModel.fromJson(responseData);
    } catch (e) {
      throw Exception('Failed to add product: $e');
    }
  }

  Future<ProductModel> updateProduct(int id, ProductModel product) async {
    final url = '$baseUrl/$id';
    try {
      final dynamic responseData = await _api.put(
        url: url,
        body: product.toJson(), 
      );
      return ProductModel.fromJson(responseData);
    } catch (e) {
      throw Exception('Failed to update product: $e');
    }
  }

  Future<bool> deleteProduct(int id) async {
    final url = '$baseUrl/$id';
    try {
      await _api.delete(url: url); 
      return true;
    } catch (e) {
      throw Exception('Failed to delete product: $e');
    }
  }
}