import 'package:network_module_sample/core/network/moya_style/network_interface.dart';

class Host {
  // TODO: SecretClient를 추후에 구현해서 환경별로 baseURL을 바꿔준다.
  static String get baseURL => "https://jsonplaceholder.typicode.com";
}

// HTTP Method Enum
enum HttpMethod { get, post, put, delete }

// enum을 extension해서 TargetType을 구현하는 것이 불가능하다.
// enum을 Swift 처럼 사용하려고 하면 안 된다.
// 테스트 겸 구현이지만, 목적에 맞는 도구인가 에 대한 고민이 필요하다.
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
