import 'package:dio/dio.dart';
import 'package:gctd/data/datasources/tasks/create_task/create_task_datasource.dart';
import 'package:gctd/data/datasources/tasks/create_task/create_task_datasource_impl.dart';
import 'package:gctd/data/datasources/tasks/get_tasks/get_tasks_datasource.dart';
import 'package:gctd/data/datasources/tasks/get_tasks/get_tasks_datasource_impl.dart';
import 'package:gctd/data/repositories/create_task/create_task_repository_impl.dart';
import 'package:gctd/data/repositories/get_tasks/get_tasks_repository_impl.dart';
import 'package:gctd/domain/repositories/tasks/create_task/create_task_repository.dart';
import 'package:gctd/domain/repositories/tasks/get_tasks/get_tasks_repository.dart';
import 'package:gctd/domain/usecases/create_task/create_task_usecase.dart';
import 'package:gctd/domain/usecases/create_task/create_task_usecase_impl.dart';
import 'package:gctd/domain/usecases/get_tasks/get_tasks_usecase.dart';
import 'package:gctd/domain/usecases/get_tasks/get_tasks_usecase_impl.dart';
import 'package:get_it/get_it.dart';

sealed class TasksInject {
  static void inject(GetIt getIt) {
    getIt.registerFactory<CreateTaskDatasource>(
      () => CreateTaskDatasourceImpl(
        httpClient: getIt.get<Dio>(),
      ),
    );
    getIt.registerFactory<CreateTaskRepository>(
      () => CreateTaskRepositoryImpl(
        createTaskDatasource: getIt.get<CreateTaskDatasource>(),
      ),
    );
    getIt.registerFactory<CreateTaskUsecase>(
      () => CreateTaskUsecaseImpl(
          createTaskRepository: getIt.get<CreateTaskRepository>()),
    );

    getIt.registerFactory<GetTasksDatasource>(
      () => GetTasksDatasourceImpl(
        httpClient: getIt.get<Dio>(),
      ),
    );
    getIt.registerFactory<GetTasksRepository>(
      () => GetTasksRepositoryImpl(
        getTasksDatasource: getIt.get<GetTasksDatasource>(),
      ),
    );
    getIt.registerFactory<GetTasksUsecase>(
      () => GetTasksUsecaseImpl(
          getTasksRepository: getIt.get<GetTasksRepository>()),
    );
  }
}
