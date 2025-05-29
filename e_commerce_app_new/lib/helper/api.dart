import 'package:dio/dio.dart';

class Api {
  final Dio _dio = Dio();

  //Api() {}

  Future<dynamic> get({required String url, String? token}) async {
    try {
      Options options = Options();
      if (token != null) {
        options = Options(headers: {'Authorization': 'Bearer $token'});
      }
      Response response = await _dio.get(url, options: options);
      return response.data;
    } on DioException catch (e) {
      print(
        'GET DioError: ${e.response?.statusCode} - ${e.message} - ${e.response?.data}',
      );
      throw Exception('GET Request failed: ${e.message ?? 'Unknown error'}');
    } catch (e) {
      print('GET Unexpected Error: $e');
      throw Exception('An unexpected error occurred during GET request: $e');
    }
  }

  Future<dynamic> post({
    required String url,
    required dynamic body,
    String? token,
  }) async {
    try {
      Options options = Options();
      if (token != null) {
        options = Options(headers: {'Authorization': 'Bearer $token'});
      }
      Response response = await _dio.post(url, data: body, options: options);
      return response.data;
    } on DioException catch (e) {
      print(
        'POST DioError: ${e.response?.statusCode} - ${e.message} - ${e.response?.data}',
      );
      throw Exception('POST Request failed: ${e.message ?? 'Unknown error'}');
    } catch (e) {
      print('POST Unexpected Error: $e');
      throw Exception('An unexpected error occurred during POST request: $e');
    }
  }

  Future<dynamic> put({
    required String url,
    required dynamic body,
    String? token,
  }) async {
    try {
      Options options = Options();
      if (token != null) {
        options = Options(headers: {'Authorization': 'Bearer $token'});
      }
      Response response = await _dio.put(url, data: body, options: options);
      return response.data;
    } on DioException catch (e) {
      print(
        'PUT DioError: ${e.response?.statusCode} - ${e.message} - ${e.response?.data}',
      );
      throw Exception('PUT Request failed: ${e.message ?? 'Unknown error'}');
    } catch (e) {
      print('PUT Unexpected Error: $e');
      throw Exception('An unexpected error occurred during PUT request: $e');
    }
  }

  Future<dynamic> delete({required String url, String? token}) async {
    try {
      Options options = Options();
      if (token != null) {
        options = Options(headers: {'Authorization': 'Bearer $token'});
      }
      Response response = await _dio.delete(url, options: options);
      return response.data;
    } on DioException catch (e) {
      print(
        'DELETE DioError: ${e.response?.statusCode} - ${e.message} - ${e.response?.data}',
      );
      throw Exception('DELETE Request failed: ${e.message ?? 'Unknown error'}');
    } catch (e) {
      print('DELETE Unexpected Error: $e');
      throw Exception('An unexpected error occurred during DELETE request: $e');
    }
  }
}
