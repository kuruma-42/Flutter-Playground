import 'package:injectable/injectable.dart';
import 'package:network_module_sample/data/network_data/task/task_api.dart';
import 'package:network_module_sample/domain/entity/task.dart' show Task;
import 'package:network_module_sample/domain/repository/task_repository.dart';

@LazySingleton(as: TaskRepository)
class TaskRepositoryImpl implements TaskRepository {
  TaskRepositoryImpl(this._api);

  final TaskApi _api;

  @override
  Future<List<Task>> fetchTasks() async {
    final result = await _api.getTasks();
    return result.map((dto) => dto.toEntity()).toList();
  }
}
