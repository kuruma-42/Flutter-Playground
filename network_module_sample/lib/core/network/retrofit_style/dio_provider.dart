import 'package:dio/dio.dart';

Dio dioProvider(BaseOptions options) {
  final dio = Dio(options);
  dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
  return dio;
}
