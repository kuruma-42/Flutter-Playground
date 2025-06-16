import 'package:flutter/material.dart';
import 'package:network_module_sample/core/core_di.dart';
import 'package:network_module_sample/data/%08data_di.dart';
import 'package:network_module_sample/domain/repository/task_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initCoreDI();
  await initDataDI();

  final repo = dataDI<TaskRepository>();
  final tasks = await repo.fetchTasks();
  print(tasks);
}
