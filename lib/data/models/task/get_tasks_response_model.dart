import 'package:gctd/data/models/task/task_model.dart';
import 'package:gctd/domain/entities/task/get_tasks_reponse_entity.dart';
import 'package:gctd/domain/entities/task/task_entity.dart';

final class GetTasksResponseModel extends GetTasksResponseEntity {
  GetTasksResponseModel({required super.tasks});
  factory GetTasksResponseModel.fromMap(Map<String, dynamic> map) {
    return GetTasksResponseModel(
      tasks: List<TaskEntity>.from(
        (map['tasks'] as List<int>).map<TaskModel>(
          (x) => TaskModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }
}
