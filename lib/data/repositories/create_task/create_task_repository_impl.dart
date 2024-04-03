import 'package:dartz/dartz.dart';
import 'package:gctd/data/datasources/tasks/create_task/create_task_datasource.dart';
import 'package:gctd/data/models/task/task_model.dart';
import 'package:gctd/domain/entities/task/task_entity.dart';
import 'package:gctd/domain/repositories/tasks/create_task/create_task_repository.dart';

final class CreateTaskRepositoryImpl implements CreateTaskRepository {
  final CreateTaskDatasource _createTaskDatasource;

  CreateTaskRepositoryImpl({required createTaskDatasource})
      : _createTaskDatasource = createTaskDatasource;
  @override
  Future<Either<Exception, void>> createTask({required TaskEntity task}) async {
    try {
      await _createTaskDatasource.createTask(
        task: TaskModel.fromEntity(task),
      );
      return const Right(null);
    } on Exception catch (exception) {
      return Left(exception);
    }
  }
}
