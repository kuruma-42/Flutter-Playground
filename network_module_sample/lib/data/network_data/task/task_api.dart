import 'package:dio/dio.dart';
import 'package:network_module_sample/data/network_data/task/model/task_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'task_api.g.dart';

@RestApi()
abstract class TaskApi {
  factory TaskApi(Dio dio, {String baseUrl}) = _TaskApi;

  @GET('/tasks')
  Future<List<TaskDto>> getTasks();
}
