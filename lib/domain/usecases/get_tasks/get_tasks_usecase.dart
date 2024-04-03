import 'package:dartz/dartz.dart';
import 'package:gctd/domain/entities/task/get_tasks_reponse_entity.dart';

abstract interface class GetTasksUsecase {
  Future<Either<Exception, GetTasksResponseEntity>> call();
}
