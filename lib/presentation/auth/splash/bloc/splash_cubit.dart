import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/core/sharedpref/shared_pref_key.dart';
import 'package:flutter_component_playground/core/sharedpref/shared_prefs.dart';
import 'package:flutter_component_playground/domain/entities/apientity/auth/profile_api_entity.dart';
import 'package:flutter_component_playground/domain/usecase/auth/fetch_profile_api_usecase.dart';
import 'package:flutter_component_playground/presentation/auth/splash/bloc/splash_screen_state.dart';

class SplashCubit extends Cubit<SplashScreenState> {
  final SharedPrefs _sharedPrefs;
  final FetchProfileApiUsecase _fetchProfileApiUsecase;

  SplashCubit({
    required SharedPrefs sharedPrefs,
    required FetchProfileApiUsecase fetchProfileApiUsecase,
  })  : _sharedPrefs = sharedPrefs,
        _fetchProfileApiUsecase = fetchProfileApiUsecase,
        super(const SplashScreenState());

  void fetchProfile() async {
    emit(state.copyWith(isLoading: true, showErrorUi: false));
    
    // Check if the Cubit is still active before emitting a new state
    if (!isClosed) {
      if (!_sharedPrefs.getBool(key: SharedPrefKey.introScreenVisibility)) {
        emit(state.copyWith(shouldNavigateToOnboardingScreen: true));

        return;
      }

      if (!_sharedPrefs.getBool(key: SharedPrefKey.userLoggedInStatus)) {
        emit(state.copyWith(shouldNavigateToLoginScreen: true));

        return;
      }

      try {
        final result = await _fetchProfileApiUsecase.invoke();

        switch (result) {
          case SuccessResult<ProfileApiEntity>():
            return emit(state.copyWith(shouldNavigateToHomeScreen: true));
          case FailureResult<ProfileApiEntity>():
            return emit(
              state.copyWith(
                shouldNavigateToLoginScreen: true,
              ),
            );
        }
      } catch (error) {
        emit(state.copyWith(errorMessage: error.toString(), showErrorUi: true));
      }
    }
  }
}
