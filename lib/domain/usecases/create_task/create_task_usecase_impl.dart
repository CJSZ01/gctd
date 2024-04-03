import 'package:dartz/dartz.dart';
import 'package:gctd/domain/entities/task/task_entity.dart';
import 'package:gctd/domain/repositories/tasks/create_task/create_task_repository.dart';
import 'package:gctd/domain/usecases/create_task/create_task_usecase.dart';

final class CreateTaskUsecaseImpl implements CreateTaskUsecase {
  final CreateTaskRepository _createTaskRepository;

  CreateTaskUsecaseImpl({required CreateTaskRepository createTaskRepository})
      : _createTaskRepository = createTaskRepository;
  @override
  Future<Either<Exception, void>> call({required TaskEntity task}) {
    return _createTaskRepository.createTask(task: task);
  }
}
