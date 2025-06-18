import 'package:flutter_component_playground/core/di/module/app_di_module.dart';
import 'package:flutter_component_playground/presentation/auth/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:flutter_component_playground/presentation/auth/login/bloc/login_bloc.dart';
import 'package:flutter_component_playground/presentation/auth/onboarding/bloc/onboarding_cubit.dart';
import 'package:flutter_component_playground/presentation/auth/registration/bloc/registration_bloc.dart';
import 'package:flutter_component_playground/presentation/auth/splash/bloc/splash_cubit.dart';
import 'package:flutter_component_playground/presentation/home/bloc/home_bloc.dart';

Future<void> registerBlocModule() async {
  di
    ..registerFactory<SplashCubit>(() => SplashCubit(
          sharedPrefs: di.get(),
          fetchProfileApiUsecase: di.get(),
        ))
    ..registerFactory<LoginBloc>(() => LoginBloc(
          postLoginUseCase: di.get(),
          sharedPrefs: di.get(),
          fetchProfileApiUsecase: di.get(),
        ))
    ..registerFactory<RegistrationBloc>(() => RegistrationBloc(
          postRegistrationUsecase: di.get(),
          checkEmailAvailabilityApiUsecase: di.get(),
        ))
    ..registerFactory<ForgotPasswordBloc>(() => ForgotPasswordBloc(
          postResetPasswordApiUsecase: di.get(),
          postSendOtpApiUsecase: di.get(),
          postVerifyOtpApiUsecase: di.get(),
        ))
    ..registerFactory<OnboardingCubit>(
      () => OnboardingCubit(sharedPrefs: di.get()),
    )
    ..registerFactory<HomeBloc>(
      () => HomeBloc(
        fetchUpcomingMoviesApiUsecase: di.get(),
        fetchMovieCategoriesApiUsecase: di.get(),
        fetchMovieApiUsecase: di.get(),
      ),
    );

  return;
}
