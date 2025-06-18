import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_screen_state.freezed.dart';

@freezed
abstract class SplashScreenState with _$SplashScreenState {
  const factory SplashScreenState({
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default(false) bool showErrorUi,
    @Default(false) bool shouldNavigateToLoginScreen,
    @Default(false) bool shouldNavigateToHomeScreen,
    @Default(false) bool shouldNavigateToOnboardingScreen,
  }) = _SplashScreenState;
}
