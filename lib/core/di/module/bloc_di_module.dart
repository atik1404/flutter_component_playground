import 'package:flutter_component_playground/core/di/module/app_di_module.dart';
import 'package:flutter_component_playground/presentation/auth/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:flutter_component_playground/presentation/auth/login/bloc/login_bloc.dart';
import 'package:flutter_component_playground/presentation/auth/onboarding/bloc/onboarding_cubit.dart';
import 'package:flutter_component_playground/presentation/auth/registration/bloc/registration_bloc.dart';
import 'package:flutter_component_playground/presentation/auth/splash/block/splash_cubit.dart';

Future<void> registerBlocModule() async {
  di
    ..registerFactory<SplashCubit>(() => SplashCubit(
          sharedPrefs: di.get(),
        ))
    ..registerFactory<LoginBloc>(() => LoginBloc(
          postLoginUseCase: di.get(),
          sharedPrefs: di.get(),
        ))
    ..registerFactory<RegistrationBloc>(() => RegistrationBloc(
          postRegistrationUsecase: di.get(),
        ))
    ..registerFactory<ForgotPasswordBloc>(() => ForgotPasswordBloc(
          postResetPasswordApiUsecase: di.get(),
          postSendOtpApiUsecase: di.get(),
          postVerifyOtpApiUsecase: di.get(),
        ))
    ..registerFactory<OnboardingCubit>(
      () => OnboardingCubit(sharedPrefs: di.get()),
    );

  return;
}
