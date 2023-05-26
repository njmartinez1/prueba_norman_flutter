import 'package:dio/dio.dart';
import 'package:prueba_norman/models/api_response.dart';

class ProductService {
  final _dio = Dio();

  Future<ApiResponse> getProducts() async {
    try {
      final response = await _dio.get('https://fakestoreapi.com/products');
      return ApiResponse(data: response.data);
    } on DioError catch (_) {
      return ApiResponse(error: true);
    }
  }
}
