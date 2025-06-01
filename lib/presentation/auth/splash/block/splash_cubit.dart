import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/core/sharedpref/shared_pref_key.dart';
import 'package:flutter_component_playground/core/sharedpref/shared_prefs.dart';
import 'package:flutter_component_playground/domain/usecase/auth/fetch_profile_api_usecase.dart';
import 'package:flutter_component_playground/presentation/auth/splash/block/splash_screen_state.dart';

class SplashCubit extends Cubit<SplashScreenState> {
  final SharedPrefs _sharedPrefs;
  final FetchProfileApiUsecase _fetchProfileApiUsecase;

  SplashCubit({
    required SharedPrefs sharedPrefs,
    required FetchProfileApiUsecase fetchProfileApiUsecase,
  })  : _sharedPrefs = sharedPrefs,
        _fetchProfileApiUsecase = fetchProfileApiUsecase,
        super(const SplashScreenState());

  void navigateToNextScreen() async {
    emit(state.copyWith(isLoading: true));

    await Future.delayed(const Duration(milliseconds: 2000));

    // Check if the Cubit is still active before emitting a new state
    if (!isClosed) {
      if (!_sharedPrefs.getBool(key: SharedPrefKey.introScreenVisibility)) {
        emit(state.copyWith(shouldNavigateToOnboardingScreen: true));

        return;
      }

      if (_sharedPrefs.getBool(key: SharedPrefKey.userLoggedInStatus)) {
        emit(state.copyWith(shouldNavigateToHomeScreen: true));
      } else {
        emit(state.copyWith(shouldNavigateToLoginScreen: true));
      }
    }
  }
}
