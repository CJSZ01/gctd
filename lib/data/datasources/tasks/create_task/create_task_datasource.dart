import 'package:gctd/data/models/task/task_model.dart';

abstract interface class CreateTaskDatasource {
  Future<void> createTask({required TaskModel task});
}
