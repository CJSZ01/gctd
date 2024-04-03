import 'package:dio/dio.dart';
import 'package:gctd/core/constants/endpoints.dart';
import 'package:gctd/data/datasources/tasks/get_tasks/get_tasks_datasource.dart';
import 'package:gctd/data/models/task/get_tasks_response_model.dart';
import 'package:gctd/domain/entities/task/task_entity.dart';

final class GetTasksDatasourceImpl implements GetTasksDatasource {
  final Dio _httpClient;

  GetTasksDatasourceImpl({required Dio httpClient}) : _httpClient = httpClient;

  @override
  Future<GetTasksResponseModel> getTasks() async {
    final response = await _httpClient.get(Endpoints.todos);
    return GetTasksResponseModel(
      tasks: List<TaskEntity>.from(response.data),
    );
  }
}
