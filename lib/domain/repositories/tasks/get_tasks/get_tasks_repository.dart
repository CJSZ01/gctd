import 'package:dartz/dartz.dart';
import 'package:gctd/data/models/task/get_tasks_response_model.dart';

abstract interface class GetTasksRepository {
  Future<Either<Exception, GetTasksResponseModel>> getTasks();
}
