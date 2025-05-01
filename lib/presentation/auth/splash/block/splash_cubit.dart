import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/presentation/auth/splash/block/splash_screen_state.dart';

class SplashCubit extends Cubit<SplashScreenState> {
  SplashCubit()
      : super(const SplashScreenState(
          isLoading: true,
          shouldNavigateToNextScreen: false,
        ));

  void navigateToLoginScreen() async {
    emit(state.copyWith(isLoading: true));

    await Future.delayed(const Duration(milliseconds: 2000));

    // Check if the Cubit is still active before emitting a new state
    if (!isClosed) {
      emit(state.copyWith(shouldNavigateToNextScreen: true));
    }
  }
}
