import 'package:network_module_sample/core/test/network_test/moya_style/api_service.dart';

mixin TargetType {
  String get baseUrl;
  String get path;
  HttpMethod get method;
  Map<String, dynamic>? get headers;
  dynamic get body;
  Map<String, dynamic>? get queryParams;
}
