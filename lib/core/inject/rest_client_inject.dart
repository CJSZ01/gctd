import 'package:gctd/core/rest_client/rest_client.dart';
import 'package:get_it/get_it.dart';

sealed class RestClientInject {
  static void inject(GetIt getIt) {
    getIt.registerLazySingleton(() => RestClient().restClient);
  }
}
