import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:network_module_sample/core/network/dio_factory.dart';
import 'package:network_module_sample/data/network_data/host.dart';
import 'package:network_module_sample/data/network_data/task/task_api.dart';

@module
abstract class ApiModule {
  @Named('task')
  @lazySingleton
  Dio taskDio(DioFactory dioFactory) => dioFactory.create(Host.baseUrl);

  @lazySingleton
  TaskApi taskApi(@Named('task') Dio dio) => TaskApi(dio);
}
