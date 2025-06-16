// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeEvent()';
  }
}

/// @nodoc
class $HomeEventCopyWith<$Res> {
  $HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}

/// @nodoc

class UpdateSliderIndex implements HomeEvent {
  const UpdateSliderIndex(this.index);

  final int index;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateSliderIndexCopyWith<UpdateSliderIndex> get copyWith =>
      _$UpdateSliderIndexCopyWithImpl<UpdateSliderIndex>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateSliderIndex &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @override
  String toString() {
    return 'HomeEvent.updateSliderIndex(index: $index)';
  }
}

/// @nodoc
abstract mixin class $UpdateSliderIndexCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $UpdateSliderIndexCopyWith(
          UpdateSliderIndex value, $Res Function(UpdateSliderIndex) _then) =
      _$UpdateSliderIndexCopyWithImpl;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$UpdateSliderIndexCopyWithImpl<$Res>
    implements $UpdateSliderIndexCopyWith<$Res> {
  _$UpdateSliderIndexCopyWithImpl(this._self, this._then);

  final UpdateSliderIndex _self;
  final $Res Function(UpdateSliderIndex) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? index = null,
  }) {
    return _then(UpdateSliderIndex(
      null == index
          ? _self.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class FetchUpcomingMovies implements HomeEvent {
  const FetchUpcomingMovies();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchUpcomingMovies);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeEvent.fetchUpcomingMovies()';
  }
}

// dart format on
