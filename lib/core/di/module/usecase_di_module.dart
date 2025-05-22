import 'package:flutter_component_playground/core/di/module/app_di_module.dart';
import 'package:flutter_component_playground/domain/usecase/auth/post_login_api_usecase.dart';

Future<void> registerUseCaseModule() async {
  di.registerLazySingleton<PostLoginApiUsecase>(() => PostLoginApiUsecase(
        di.get(),
      ));

  return;
}
