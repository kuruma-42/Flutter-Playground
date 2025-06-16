import 'package:network_module_sample/domain/entity/task.dart';

abstract class TaskRepository {
  Future<List<Task>> fetchTasks();
}
