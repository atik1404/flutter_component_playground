// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OnboardingState {
  bool get isLastPage;
  bool get shouldNavigateToNextScreen;
  int get currentPage;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OnboardingStateCopyWith<OnboardingState> get copyWith =>
      _$OnboardingStateCopyWithImpl<OnboardingState>(
          this as OnboardingState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnboardingState &&
            (identical(other.isLastPage, isLastPage) ||
                other.isLastPage == isLastPage) &&
            (identical(other.shouldNavigateToNextScreen,
                    shouldNavigateToNextScreen) ||
                other.shouldNavigateToNextScreen ==
                    shouldNavigateToNextScreen) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLastPage, shouldNavigateToNextScreen, currentPage);

  @override
  String toString() {
    return 'OnboardingState(isLastPage: $isLastPage, shouldNavigateToNextScreen: $shouldNavigateToNextScreen, currentPage: $currentPage)';
  }
}

/// @nodoc
abstract mixin class $OnboardingStateCopyWith<$Res> {
  factory $OnboardingStateCopyWith(
          OnboardingState value, $Res Function(OnboardingState) _then) =
      _$OnboardingStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLastPage, bool shouldNavigateToNextScreen, int currentPage});
}

/// @nodoc
class _$OnboardingStateCopyWithImpl<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._self, this._then);

  final OnboardingState _self;
  final $Res Function(OnboardingState) _then;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLastPage = null,
    Object? shouldNavigateToNextScreen = null,
    Object? currentPage = null,
  }) {
    return _then(_self.copyWith(
      isLastPage: null == isLastPage
          ? _self.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldNavigateToNextScreen: null == shouldNavigateToNextScreen
          ? _self.shouldNavigateToNextScreen
          : shouldNavigateToNextScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: null == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _OnboardingState implements OnboardingState {
  const _OnboardingState(
      {this.isLastPage = false,
      this.shouldNavigateToNextScreen = false,
      this.currentPage = 0});

  @override
  @JsonKey()
  final bool isLastPage;
  @override
  @JsonKey()
  final bool shouldNavigateToNextScreen;
  @override
  @JsonKey()
  final int currentPage;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OnboardingStateCopyWith<_OnboardingState> get copyWith =>
      __$OnboardingStateCopyWithImpl<_OnboardingState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnboardingState &&
            (identical(other.isLastPage, isLastPage) ||
                other.isLastPage == isLastPage) &&
            (identical(other.shouldNavigateToNextScreen,
                    shouldNavigateToNextScreen) ||
                other.shouldNavigateToNextScreen ==
                    shouldNavigateToNextScreen) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLastPage, shouldNavigateToNextScreen, currentPage);

  @override
  String toString() {
    return 'OnboardingState(isLastPage: $isLastPage, shouldNavigateToNextScreen: $shouldNavigateToNextScreen, currentPage: $currentPage)';
  }
}

/// @nodoc
abstract mixin class _$OnboardingStateCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$OnboardingStateCopyWith(
          _OnboardingState value, $Res Function(_OnboardingState) _then) =
      __$OnboardingStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLastPage, bool shouldNavigateToNextScreen, int currentPage});
}

/// @nodoc
class __$OnboardingStateCopyWithImpl<$Res>
    implements _$OnboardingStateCopyWith<$Res> {
  __$OnboardingStateCopyWithImpl(this._self, this._then);

  final _OnboardingState _self;
  final $Res Function(_OnboardingState) _then;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLastPage = null,
    Object? shouldNavigateToNextScreen = null,
    Object? currentPage = null,
  }) {
    return _then(_OnboardingState(
      isLastPage: null == isLastPage
          ? _self.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldNavigateToNextScreen: null == shouldNavigateToNextScreen
          ? _self.shouldNavigateToNextScreen
          : shouldNavigateToNextScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: null == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
