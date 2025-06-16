import 'package:flutter_component_playground/core/di/annotation/di_annotation.dart';
import 'package:flutter_component_playground/core/di/module/app_di_module.dart';
import 'package:flutter_component_playground/core/network/network_client.dart';
import 'package:flutter_component_playground/data/datasources/remote/auth_api_services.dart';
import 'package:flutter_component_playground/data/datasources/remote/movie_api_services.dart';

Future<void> registerApiServiceModule() async {
  di
    ..registerLazySingleton<AuthApiServices>(
      () => AuthApiServices(
        dio: di
            .get<NetworkClient>(
              instanceName: DIAnnotation.authBaseUrl.toString(),
            )
            .dio,
      ),
    )
    ..registerLazySingleton<MovieApiServices>(
      () => MovieApiServices(
        dio: di
            .get<NetworkClient>(
              instanceName: DIAnnotation.baseURL.toString(),
            )
            .dio,
      ),
    );

  return;
}
