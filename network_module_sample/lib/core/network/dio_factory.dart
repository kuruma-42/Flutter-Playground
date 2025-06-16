import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class DioFactory {
  Dio create(String baseUrl);
}

@LazySingleton(as: DioFactory)
class DioFactoryImpl implements DioFactory {
  @override
  Dio create(String baseUrl) {
    final dio = Dio(BaseOptions(baseUrl: baseUrl));
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    return dio;
  }
}
