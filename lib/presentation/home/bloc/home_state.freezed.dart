// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeState implements DiagnosticableTreeMixin {
  bool get fullPageLoader;
  int get currentSliderIndex;
  List<MovieApiEntity> get slider;
  String get errorMessage;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeStateCopyWith<HomeState> get copyWith =>
      _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('fullPageLoader', fullPageLoader))
      ..add(DiagnosticsProperty('currentSliderIndex', currentSliderIndex))
      ..add(DiagnosticsProperty('slider', slider))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeState &&
            (identical(other.fullPageLoader, fullPageLoader) ||
                other.fullPageLoader == fullPageLoader) &&
            (identical(other.currentSliderIndex, currentSliderIndex) ||
                other.currentSliderIndex == currentSliderIndex) &&
            const DeepCollectionEquality().equals(other.slider, slider) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      fullPageLoader,
      currentSliderIndex,
      const DeepCollectionEquality().hash(slider),
      errorMessage);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(fullPageLoader: $fullPageLoader, currentSliderIndex: $currentSliderIndex, slider: $slider, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) =
      _$HomeStateCopyWithImpl;
  @useResult
  $Res call(
      {bool fullPageLoader,
      int currentSliderIndex,
      List<MovieApiEntity> slider,
      String errorMessage});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullPageLoader = null,
    Object? currentSliderIndex = null,
    Object? slider = null,
    Object? errorMessage = null,
  }) {
    return _then(_self.copyWith(
      fullPageLoader: null == fullPageLoader
          ? _self.fullPageLoader
          : fullPageLoader // ignore: cast_nullable_to_non_nullable
              as bool,
      currentSliderIndex: null == currentSliderIndex
          ? _self.currentSliderIndex
          : currentSliderIndex // ignore: cast_nullable_to_non_nullable
              as int,
      slider: null == slider
          ? _self.slider
          : slider // ignore: cast_nullable_to_non_nullable
              as List<MovieApiEntity>,
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _HomeState with DiagnosticableTreeMixin implements HomeState {
  const _HomeState(
      {this.fullPageLoader = false,
      this.currentSliderIndex = 0,
      final List<MovieApiEntity> slider = const [],
      this.errorMessage = ''})
      : _slider = slider;

  @override
  @JsonKey()
  final bool fullPageLoader;
  @override
  @JsonKey()
  final int currentSliderIndex;
  final List<MovieApiEntity> _slider;
  @override
  @JsonKey()
  List<MovieApiEntity> get slider {
    if (_slider is EqualUnmodifiableListView) return _slider;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_slider);
  }

  @override
  @JsonKey()
  final String errorMessage;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('fullPageLoader', fullPageLoader))
      ..add(DiagnosticsProperty('currentSliderIndex', currentSliderIndex))
      ..add(DiagnosticsProperty('slider', slider))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            (identical(other.fullPageLoader, fullPageLoader) ||
                other.fullPageLoader == fullPageLoader) &&
            (identical(other.currentSliderIndex, currentSliderIndex) ||
                other.currentSliderIndex == currentSliderIndex) &&
            const DeepCollectionEquality().equals(other._slider, _slider) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      fullPageLoader,
      currentSliderIndex,
      const DeepCollectionEquality().hash(_slider),
      errorMessage);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(fullPageLoader: $fullPageLoader, currentSliderIndex: $currentSliderIndex, slider: $slider, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) _then) =
      __$HomeStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool fullPageLoader,
      int currentSliderIndex,
      List<MovieApiEntity> slider,
      String errorMessage});
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fullPageLoader = null,
    Object? currentSliderIndex = null,
    Object? slider = null,
    Object? errorMessage = null,
  }) {
    return _then(_HomeState(
      fullPageLoader: null == fullPageLoader
          ? _self.fullPageLoader
          : fullPageLoader // ignore: cast_nullable_to_non_nullable
              as bool,
      currentSliderIndex: null == currentSliderIndex
          ? _self.currentSliderIndex
          : currentSliderIndex // ignore: cast_nullable_to_non_nullable
              as int,
      slider: null == slider
          ? _self._slider
          : slider // ignore: cast_nullable_to_non_nullable
              as List<MovieApiEntity>,
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
