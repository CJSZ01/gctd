import 'package:dartz/dartz.dart';
import 'package:gctd/domain/entities/task/task_entity.dart';

abstract interface class CreateTaskUsecase {
  Future<Either<Exception, void>> call({required TaskEntity task});
}
