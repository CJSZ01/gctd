import 'package:dio/dio.dart';
import 'package:gctd/core/constants/endpoints.dart';

final class RestClient {
  final Dio _restClient = Dio(
    BaseOptions(
      baseUrl: Endpoints.baseUrl,
    ),
  );
  Dio get restClient {
    _restClient.interceptors.add(
      LogInterceptor(responseBody: true, requestHeader: true),
    );
    return _restClient;
  }
}
