import 'package:flutter/foundation.dart';
import 'package:flutter_component_playground/domain/entities/apientity/movie/movie_api_entity.dart';
import 'package:flutter_component_playground/domain/entities/apientity/movie/movie_categories_api_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isSliderLoading,
    @Default(false) bool isCategoryLoading,
    @Default(false) bool isMoviesLoading,
    @Default(0) int currentSliderIndex,
    @Default(0) int selectedCategoryIndex,
    @Default(1) int page,
    @Default([]) List<MovieApiEntity> slider,
    @Default([]) List<MovieCategoriesApiEntity> movieCategories,
    @Default([]) List<MovieApiEntity> movies,
    @Default(false) bool isLastPage,
    @Default(false) bool isLoadingMore,
    @Default('') String errorMessage,

    // @Default(ApiState.initial()) ApiState<List<MovieApiEntity>> sliderState,
    // @Default(ApiState.initial()) ApiState<List<MovieCategoriesApiEntity>> categoryState,
    // @Default(ApiState.initial()) ApiState<List<MovieApiEntity>> movieState,

    // @Default(0) int currentSliderIndex,
    // @Default(0) int selectedCategoryIndex,
    // @Default(1) int page,
  }) = _HomeState;
}
