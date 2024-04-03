import 'package:gctd/data/models/task/get_tasks_response_model.dart';

abstract interface class GetTasksDatasource {
  Future<GetTasksResponseModel> getTasks();
}
