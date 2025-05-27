import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/common/utils/logger_utils';
import 'package:flutter_component_playground/core/sharedpref/shared_pref_key.dart';
import 'package:flutter_component_playground/core/sharedpref/shared_prefs.dart';
import 'package:flutter_component_playground/domain/entities/params/onboarding_pager_entity.dart';
import 'package:flutter_component_playground/presentation/auth/onboarding/bloc/onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  final SharedPrefs _sharedPrefs;
  OnboardingCubit({
    required SharedPrefs sharedPrefs,
  })  : _sharedPrefs = sharedPrefs,
        super(const OnboardingState());

  void onPageChanged(int index) {
    final isLastPage = index == onboardingPagerList.length - 1;

    emit(state.copyWith(
      isLastPage: isLastPage,
      currentPage: index,
    ));
  }

  void navigateToNextScreen() {
    log.info(
      "Intro screen visibility: ${_sharedPrefs.getBool(
        key: SharedPrefKey.introScreenVisibility,
      )}",
    );
    _sharedPrefs.set(key: SharedPrefKey.introScreenVisibility, value: true);
    emit(state.copyWith(shouldNavigateToNextScreen: true));
    log.info(
      "Intro screen visibility: ${_sharedPrefs.getBool(
        key: SharedPrefKey.introScreenVisibility,
      )}",
    );
  }

  void resetState() {
    emit(const OnboardingState());
  }
}
