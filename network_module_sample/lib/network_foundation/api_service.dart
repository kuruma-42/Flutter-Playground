import 'package:network_module_sample/network_foundation/network_interface.dart';

class Host {
  // TODO: SecretClient를 추후에 구현해서 환경별로 baseURL을 바꿔준다.
  static String get baseURL => "https://jsonplaceholder.typicode.com";
}

// HTTP Method Enum
enum HttpMethod { get, post, put, delete }

enum MyApi with TargetType {
  getUsers,
  getUserDetail,
  createUser;

  @override
  String get baseUrl => Host.baseURL;

  @override
  String get path {
    switch (this) {
      case MyApi.getUsers:
        return "/users";
      case MyApi.getUserDetail:
        return "/users/1";
      case MyApi.createUser:
        return "/users";
    }
  }

  @override
  HttpMethod get method {
    switch (this) {
      case MyApi.getUsers:
      case MyApi.getUserDetail:
        return HttpMethod.get;
      case MyApi.createUser:
        return HttpMethod.post;
    }
  }

  @override
  Map<String, dynamic>? get headers => {
    "Content-Type": "application/json; charset=UTF-8",
  };

  @override
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

  @override
  Map<String, dynamic>? get queryParams => null;
}

extension MyApiExtension on MyApi {}
