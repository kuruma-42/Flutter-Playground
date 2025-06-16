import 'package:json_annotation/json_annotation.dart';
import 'package:network_module_sample/domain/entity/task.dart';

part 'task_dto.g.dart';

@JsonSerializable()
class TaskDto {
  final String id;
  final String name;

  TaskDto({required this.id, required this.name});

  factory TaskDto.fromJson(Map<String, dynamic> json) =>
      _$TaskDtoFromJson(json);
  Map<String, dynamic> toJson() => _$TaskDtoToJson(this);

  Task toEntity() => Task(id: id, name: name);
}
