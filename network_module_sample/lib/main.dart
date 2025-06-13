import 'package:flutter/material.dart';
import 'package:network_module_sample/core/di/di.dart';
import 'package:network_module_sample/core/network/retrofit_style/dio_provider.dart';
import 'package:network_module_sample/core/network/moya_style/api_service.dart';
import 'package:network_module_sample/core/network/moya_style/network.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:network_module_sample/core/network/retrofit_style/network.dart';

final logger = Logger();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initDependencies();
  // Retrofit-style network requests
  getIt<RestClient>().getTasks().then((it) => logger.i(it));

  // Moya-style network requests
  final networkManager = NetworkManager();
  final getUsersResponse = await networkManager.request(MyApi.getUsers);
  final userDetailResponse = await networkManager.request(MyApi.getUserDetail);
  final createUserResponse = await networkManager.request(MyApi.createUser);
}
