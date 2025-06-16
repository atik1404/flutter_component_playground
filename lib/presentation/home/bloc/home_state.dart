import 'package:flutter/foundation.dart';
import 'package:flutter_component_playground/domain/entities/apientity/home/movie_api_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool fullPageLoader,
    @Default(0) int currentSliderIndex,
    @Default([]) List<MovieApiEntity> slider,
    @Default('') String errorMessage,
  }) = _HomeState;
}
