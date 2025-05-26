import 'package:flutter_component_playground/core/di/module/app_di_module.dart';
import 'package:flutter_component_playground/presentation/auth/login/bloc/login_bloc.dart';
import 'package:flutter_component_playground/presentation/auth/onboarding/bloc/onboarding_cubit.dart';
import 'package:flutter_component_playground/presentation/auth/registration/bloc/registration_bloc.dart';
import 'package:flutter_component_playground/presentation/auth/splash/block/splash_cubit.dart';

Future<void> registerBlocModule() async {
  di
    ..registerFactory<SplashCubit>(SplashCubit.new)
    ..registerFactory<LoginBloc>(() => LoginBloc(
          postLoginUseCase: di.get(),
          sharedPrefs: di.get(),
        ))
    ..registerFactory<RegistrationBloc>(RegistrationBloc.new)
    ..registerFactory<OnboardingCubit>(
        () => OnboardingCubit(sharedPrefs: di.get()),);

  return;
}
