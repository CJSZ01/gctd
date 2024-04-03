import 'package:dartz/dartz.dart';
import 'package:gctd/data/datasources/tasks/get_tasks/get_tasks_datasource.dart';
import 'package:gctd/data/models/task/get_tasks_response_model.dart';
import 'package:gctd/domain/repositories/tasks/get_tasks/get_tasks_repository.dart';

final class GetTasksRepositoryImpl implements GetTasksRepository {
  final GetTasksDatasource _getTasksDatasource;

  GetTasksRepositoryImpl({required getTasksDatasource})
      : _getTasksDatasource = getTasksDatasource;
  @override
  Future<Either<Exception, GetTasksResponseModel>> getTasks() async {
    try {
      final response = await _getTasksDatasource.getTasks();
      return Right(response);
    } on Exception catch (exception) {
      return Left(exception);
    }
  }
}
