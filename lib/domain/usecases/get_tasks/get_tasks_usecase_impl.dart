import 'package:dartz/dartz.dart';
import 'package:gctd/domain/entities/task/get_tasks_reponse_entity.dart';
import 'package:gctd/domain/repositories/tasks/get_tasks/get_tasks_repository.dart';
import 'package:gctd/domain/usecases/get_tasks/get_tasks_usecase.dart';

final class GetTasksUsecaseImpl implements GetTasksUsecase {
  final GetTasksRepository _getTasksRepository;

  GetTasksUsecaseImpl({required GetTasksRepository getTasksRepository})
      : _getTasksRepository = getTasksRepository;
  @override
  Future<Either<Exception, GetTasksResponseEntity>> call() {
    return _getTasksRepository.getTasks();
  }
}
