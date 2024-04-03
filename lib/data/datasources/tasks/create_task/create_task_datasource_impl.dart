import 'package:dio/dio.dart';
import 'package:gctd/core/constants/endpoints.dart';
import 'package:gctd/data/datasources/tasks/create_task/create_task_datasource.dart';
import 'package:gctd/data/models/task/task_model.dart';

final class CreateTaskDatasourceImpl implements CreateTaskDatasource {
  final Dio _httpClient;

  CreateTaskDatasourceImpl({required Dio httpClient})
      : _httpClient = httpClient;
  @override
  Future<void> createTask({required TaskModel task}) async {
    await _httpClient.post(
      Endpoints.todos,
      data: task.toMap(),
    );
  }
}
