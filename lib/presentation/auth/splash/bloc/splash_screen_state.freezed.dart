// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SplashScreenState {
  bool get isLoading;
  String get errorMessage;
  bool get showErrorUi;
  bool get shouldNavigateToLoginScreen;
  bool get shouldNavigateToHomeScreen;
  bool get shouldNavigateToOnboardingScreen;

  /// Create a copy of SplashScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SplashScreenStateCopyWith<SplashScreenState> get copyWith =>
      _$SplashScreenStateCopyWithImpl<SplashScreenState>(
          this as SplashScreenState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SplashScreenState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.showErrorUi, showErrorUi) ||
                other.showErrorUi == showErrorUi) &&
            (identical(other.shouldNavigateToLoginScreen,
                    shouldNavigateToLoginScreen) ||
                other.shouldNavigateToLoginScreen ==
                    shouldNavigateToLoginScreen) &&
            (identical(other.shouldNavigateToHomeScreen,
                    shouldNavigateToHomeScreen) ||
                other.shouldNavigateToHomeScreen ==
                    shouldNavigateToHomeScreen) &&
            (identical(other.shouldNavigateToOnboardingScreen,
                    shouldNavigateToOnboardingScreen) ||
                other.shouldNavigateToOnboardingScreen ==
                    shouldNavigateToOnboardingScreen));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      errorMessage,
      showErrorUi,
      shouldNavigateToLoginScreen,
      shouldNavigateToHomeScreen,
      shouldNavigateToOnboardingScreen);

  @override
  String toString() {
    return 'SplashScreenState(isLoading: $isLoading, errorMessage: $errorMessage, showErrorUi: $showErrorUi, shouldNavigateToLoginScreen: $shouldNavigateToLoginScreen, shouldNavigateToHomeScreen: $shouldNavigateToHomeScreen, shouldNavigateToOnboardingScreen: $shouldNavigateToOnboardingScreen)';
  }
}

/// @nodoc
abstract mixin class $SplashScreenStateCopyWith<$Res> {
  factory $SplashScreenStateCopyWith(
          SplashScreenState value, $Res Function(SplashScreenState) _then) =
      _$SplashScreenStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLoading,
      String errorMessage,
      bool showErrorUi,
      bool shouldNavigateToLoginScreen,
      bool shouldNavigateToHomeScreen,
      bool shouldNavigateToOnboardingScreen});
}

/// @nodoc
class _$SplashScreenStateCopyWithImpl<$Res>
    implements $SplashScreenStateCopyWith<$Res> {
  _$SplashScreenStateCopyWithImpl(this._self, this._then);

  final SplashScreenState _self;
  final $Res Function(SplashScreenState) _then;

  /// Create a copy of SplashScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? showErrorUi = null,
    Object? shouldNavigateToLoginScreen = null,
    Object? shouldNavigateToHomeScreen = null,
    Object? shouldNavigateToOnboardingScreen = null,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      showErrorUi: null == showErrorUi
          ? _self.showErrorUi
          : showErrorUi // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldNavigateToLoginScreen: null == shouldNavigateToLoginScreen
          ? _self.shouldNavigateToLoginScreen
          : shouldNavigateToLoginScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldNavigateToHomeScreen: null == shouldNavigateToHomeScreen
          ? _self.shouldNavigateToHomeScreen
          : shouldNavigateToHomeScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldNavigateToOnboardingScreen: null == shouldNavigateToOnboardingScreen
          ? _self.shouldNavigateToOnboardingScreen
          : shouldNavigateToOnboardingScreen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _SplashScreenState implements SplashScreenState {
  const _SplashScreenState(
      {this.isLoading = false,
      this.errorMessage = '',
      this.showErrorUi = false,
      this.shouldNavigateToLoginScreen = false,
      this.shouldNavigateToHomeScreen = false,
      this.shouldNavigateToOnboardingScreen = false});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool showErrorUi;
  @override
  @JsonKey()
  final bool shouldNavigateToLoginScreen;
  @override
  @JsonKey()
  final bool shouldNavigateToHomeScreen;
  @override
  @JsonKey()
  final bool shouldNavigateToOnboardingScreen;

  /// Create a copy of SplashScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SplashScreenStateCopyWith<_SplashScreenState> get copyWith =>
      __$SplashScreenStateCopyWithImpl<_SplashScreenState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SplashScreenState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.showErrorUi, showErrorUi) ||
                other.showErrorUi == showErrorUi) &&
            (identical(other.shouldNavigateToLoginScreen,
                    shouldNavigateToLoginScreen) ||
                other.shouldNavigateToLoginScreen ==
                    shouldNavigateToLoginScreen) &&
            (identical(other.shouldNavigateToHomeScreen,
                    shouldNavigateToHomeScreen) ||
                other.shouldNavigateToHomeScreen ==
                    shouldNavigateToHomeScreen) &&
            (identical(other.shouldNavigateToOnboardingScreen,
                    shouldNavigateToOnboardingScreen) ||
                other.shouldNavigateToOnboardingScreen ==
                    shouldNavigateToOnboardingScreen));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      errorMessage,
      showErrorUi,
      shouldNavigateToLoginScreen,
      shouldNavigateToHomeScreen,
      shouldNavigateToOnboardingScreen);

  @override
  String toString() {
    return 'SplashScreenState(isLoading: $isLoading, errorMessage: $errorMessage, showErrorUi: $showErrorUi, shouldNavigateToLoginScreen: $shouldNavigateToLoginScreen, shouldNavigateToHomeScreen: $shouldNavigateToHomeScreen, shouldNavigateToOnboardingScreen: $shouldNavigateToOnboardingScreen)';
  }
}

/// @nodoc
abstract mixin class _$SplashScreenStateCopyWith<$Res>
    implements $SplashScreenStateCopyWith<$Res> {
  factory _$SplashScreenStateCopyWith(
          _SplashScreenState value, $Res Function(_SplashScreenState) _then) =
      __$SplashScreenStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String errorMessage,
      bool showErrorUi,
      bool shouldNavigateToLoginScreen,
      bool shouldNavigateToHomeScreen,
      bool shouldNavigateToOnboardingScreen});
}

/// @nodoc
class __$SplashScreenStateCopyWithImpl<$Res>
    implements _$SplashScreenStateCopyWith<$Res> {
  __$SplashScreenStateCopyWithImpl(this._self, this._then);

  final _SplashScreenState _self;
  final $Res Function(_SplashScreenState) _then;

  /// Create a copy of SplashScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? showErrorUi = null,
    Object? shouldNavigateToLoginScreen = null,
    Object? shouldNavigateToHomeScreen = null,
    Object? shouldNavigateToOnboardingScreen = null,
  }) {
    return _then(_SplashScreenState(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      showErrorUi: null == showErrorUi
          ? _self.showErrorUi
          : showErrorUi // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldNavigateToLoginScreen: null == shouldNavigateToLoginScreen
          ? _self.shouldNavigateToLoginScreen
          : shouldNavigateToLoginScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldNavigateToHomeScreen: null == shouldNavigateToHomeScreen
          ? _self.shouldNavigateToHomeScreen
          : shouldNavigateToHomeScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldNavigateToOnboardingScreen: null == shouldNavigateToOnboardingScreen
          ? _self.shouldNavigateToOnboardingScreen
          : shouldNavigateToOnboardingScreen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
