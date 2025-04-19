import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/presentation/auth/splash/block/splash_screen_state.dart';

class SplashCubit extends Cubit<SplashScreenState> {
  SplashCubit()
      : super(const SplashScreenState(
          isLoading: true,
          shouldNavigateToNextScreen: false,
        ));

  void navigateToLoginScreen() async {
    emit(state.copywith(isLoading: true));

    await Future.delayed(const Duration(milliseconds: 2000));

    emit(state.copywith(shouldNavigateToNextScreen: true));
  }
}
