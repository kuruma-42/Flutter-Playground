import 'package:dio/dio.dart';
import 'package:network_module_sample/network_foundation/network.dart';

class Host {
  static String get baseURL => "https://jsonplaceholder.typicode.com";
}

// HTTP Method Enum
enum HttpMethod { get, post, put, delete }

enum MyApi { getUsers, getUserDetail, createUser }

extension MyApiExtension on MyApi {
  String get baseUrl => Host.baseURL;

  String get path {
    switch (this) {
      case MyApi.getUsers:
        return "/users";
      case MyApi.getUserDetail:
        return "/users/1"; // 예시: 사용자 ID 1번
      case MyApi.createUser:
        return "/users";
    }
  }

  HttpMethod get method {
    switch (this) {
      case MyApi.getUsers:
      case MyApi.getUserDetail:
        return HttpMethod.get;
      case MyApi.createUser:
        return HttpMethod.post;
    }
  }

  Map<String, dynamic>? get headers {
    return {"Content-Type": "application/json; charset=UTF-8"};
  }

  dynamic get body {
    switch (this) {
      case MyApi.createUser:
        return {
          "name": "John Doe",
          "username": "johndoe",
          "email": "john@example.com",
        };
      default:
        return null;
    }
  }

  Map<String, dynamic>? get queryParams {
    return null;
  }
}
