import 'package:gctd/domain/entities/task/task_entity.dart';

base class GetTasksResponseEntity {
  final List<TaskEntity> tasks;
  GetTasksResponseEntity({
    required this.tasks,
  });
}
