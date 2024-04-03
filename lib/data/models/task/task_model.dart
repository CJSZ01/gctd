import 'package:gctd/domain/entities/task/task_entity.dart';

final class TaskModel extends TaskEntity {
  TaskModel({required super.task});
  factory TaskModel.fromEntity(TaskEntity task) => TaskModel(task: task.task);
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'task': task,
    };
  }

  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(
      task: map['task'] as String,
    );
  }
}
