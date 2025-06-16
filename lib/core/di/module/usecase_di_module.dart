import 'package:flutter_component_playground/core/di/module/app_di_module.dart';
import 'package:flutter_component_playground/domain/usecase/auth/check_email_availability_api_usecase.dart';
import 'package:flutter_component_playground/domain/usecase/auth/fetch_profile_api_usecase.dart';
import 'package:flutter_component_playground/domain/usecase/auth/post_login_api_usecase.dart';
import 'package:flutter_component_playground/domain/usecase/auth/post_registration_usecase.dart';
import 'package:flutter_component_playground/domain/usecase/auth/post_reset_password_api_usecase.dart';
import 'package:flutter_component_playground/domain/usecase/auth/post_send_otp_api_usecase.dart';
import 'package:flutter_component_playground/domain/usecase/auth/post_verify_otp_api_usecase.dart';
import 'package:flutter_component_playground/domain/usecase/home/fetch_upcoming_movies_api_usecase.dart';

Future<void> registerAuthUseCaseModule() async {
  di
    ..registerLazySingleton<PostLoginApiUsecase>(() => PostLoginApiUsecase(
          di.get(),
        ))
    ..registerLazySingleton<FetchProfileApiUsecase>(
      () => FetchProfileApiUsecase(
        di.get(),
      ),
    )
    ..registerLazySingleton<PostSendOtpApiUsecase>(() => PostSendOtpApiUsecase(
          di.get(),
        ))
    ..registerLazySingleton<PostVerifyOtpApiUsecase>(
      () => PostVerifyOtpApiUsecase(
        di.get(),
      ),
    )
    ..registerLazySingleton<PostResetPasswordApiUsecase>(
      () => PostResetPasswordApiUsecase(
        di.get(),
      ),
    )
    ..registerLazySingleton<CheckEmailAvailabilityApiUsecase>(
      () => CheckEmailAvailabilityApiUsecase(
        di.get(),
      ),
    )
    ..registerLazySingleton<PostRegistrationUsecase>(
      () => PostRegistrationUsecase(
        di.get(),
      ),
    );

  return;
}

Future<void> registerMovieUseCaseModule() async {
  di
    ..registerLazySingleton<FetchUpcomingMoviesApiUsecase>(
        () => FetchUpcomingMoviesApiUsecase(
              di.get(),
            ));

  return;
}
