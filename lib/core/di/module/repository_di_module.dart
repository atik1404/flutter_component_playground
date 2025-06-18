import 'package:flutter_component_playground/core/di/module/app_di_module.dart';
import 'package:flutter_component_playground/data/repoimpl/auth_repo_impl.dart';
import 'package:flutter_component_playground/data/repoimpl/movie_repo_impl.dart';
import 'package:flutter_component_playground/domain/repositories/auth_repository.dart';
import 'package:flutter_component_playground/domain/repositories/movie_repository.dart';

Future<void> registerRepositoryModule() async {
  di
    ..registerLazySingleton<AuthRepository>(() => AuthRepoImpl(
          authApiServices: di.get(),
          loginApiMapper: di.get(),
          registrationApiMapper: di.get(),
          forgotPasswordApiMapper: di.get(),
          verifyOtpApiMapper: di.get(),
          emailAvailableApiMapper: di.get(),
          sharedPrefs: di.get(),
        ))
    ..registerLazySingleton<MovieRepository>(() => MovieRepoImpl(
          apiServices: di.get(),
          upcomingMovieApiMapper: di.get(),
          movieApiMapper: di.get(),
          movieCategoriesApiMapper: di.get(),
        ));

  return;
}
