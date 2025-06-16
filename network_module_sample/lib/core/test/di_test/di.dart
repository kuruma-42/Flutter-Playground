import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:network_module_sample/core/test/network_test/retrofit_style/dio_provider.dart';
import 'package:network_module_sample/core/test/network_test/moya_style/api_service.dart';
import 'package:network_module_sample/core/test/network_test/retrofit_style/rest_client.dart';

final getIt = GetIt.instance;

Future<void> initDependencies() async {
  getIt.registerSingleton<RestClient>(
    RestClient(
      dioProvider(
        BaseOptions(
          baseUrl: Host.baseURL,
          connectTimeout: Duration(seconds: 5),
          receiveTimeout: Duration(seconds: 5),
        ),
      ),
    ),
  );
}
