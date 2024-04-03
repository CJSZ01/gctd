import 'package:dartz/dartz.dart';
import 'package:gctd/domain/entities/task/task_entity.dart';

abstract interface class CreateTaskRepository {
  Future<Either<Exception, void>> createTask({required TaskEntity task});
}
