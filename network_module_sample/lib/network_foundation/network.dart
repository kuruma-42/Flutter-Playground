import 'package:dio/dio.dart';
import 'api_service.dart';

class NetworkManager {
  final Dio _dio = Dio();

  Future<Response> request(MyApi api) async {
    try {
      _dio.options.baseUrl = "https://jsonplaceholder.typicode.com";

      final options = Options(
        method: api.method.name.toUpperCase(),
        headers: api.headers,
      );

      return await _dio.request(
        api.path,
        options: options,
        data: api.body,
        queryParameters: api.queryParams,
      );
    } catch (e) {
      rethrow;
    }
  }
}
