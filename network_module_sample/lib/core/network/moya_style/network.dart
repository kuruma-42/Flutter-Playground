import 'package:dio/dio.dart';
import 'package:network_module_sample/core/network/moya_style/network_interface.dart';

class NetworkManager {
  final Dio _dio = Dio();

  Future<Response> request(TargetType api) async {
    try {
      _dio.options.baseUrl = api.baseUrl;

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
