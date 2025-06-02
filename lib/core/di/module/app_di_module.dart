import 'package:flutter_component_playground/core/config/app_core_env.dart';
import 'package:flutter_component_playground/core/di/annotation/di_annotation.dart';
import 'package:flutter_component_playground/core/di/module/api_service_di_module.dart';
import 'package:flutter_component_playground/core/di/module/bloc_di_module.dart';
import 'package:flutter_component_playground/core/di/module/mapper_di_module.dart';
import 'package:flutter_component_playground/core/di/module/repository_di_module.dart';
import 'package:flutter_component_playground/core/di/module/usecase_di_module.dart';
import 'package:flutter_component_playground/core/network/network_client.dart';
import 'package:flutter_component_playground/core/sharedpref/shared_prefs.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.instance;

Future<void> initDi() async {
  final sharedPrefs = SharedPrefs();
  await sharedPrefs.init();

  di
    ..registerSingleton<SharedPrefs>(SharedPrefs())
    ..registerLazySingleton<NetworkClient>(
      () => NetworkClient(
        baseUrl: AppCoreEnv().appBaseUrl,
        sharedPrefs: di.get(),
      ),
      instanceName: DIAnnotation.baseURL.toString(),
    )
    ..registerLazySingleton<NetworkClient>(
      () => NetworkClient(
        baseUrl: AppCoreEnv().authBaseUrl,
        sharedPrefs: di.get(),
      ),
      instanceName: DIAnnotation.authBaseUrl.toString(),
    );

  await registerBlocModule();

  await registerRepositoryModule();

  await registerApiServiceModule();

  await registerMapperModule();

  await registerUseCaseModule();
}
