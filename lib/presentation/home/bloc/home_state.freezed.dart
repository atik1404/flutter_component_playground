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
  int get selectedCategoryIndex;
  int get page;
  List<MovieApiEntity> get slider;
  List<MovieCategoriesApiEntity> get movieCategories;
  List<MovieApiEntity> get movies;
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
      ..add(DiagnosticsProperty('selectedCategoryIndex', selectedCategoryIndex))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('slider', slider))
      ..add(DiagnosticsProperty('movieCategories', movieCategories))
      ..add(DiagnosticsProperty('movies', movies))
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
            (identical(other.selectedCategoryIndex, selectedCategoryIndex) ||
                other.selectedCategoryIndex == selectedCategoryIndex) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other.slider, slider) &&
            const DeepCollectionEquality()
                .equals(other.movieCategories, movieCategories) &&
            const DeepCollectionEquality().equals(other.movies, movies) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      fullPageLoader,
      currentSliderIndex,
      selectedCategoryIndex,
      page,
      const DeepCollectionEquality().hash(slider),
      const DeepCollectionEquality().hash(movieCategories),
      const DeepCollectionEquality().hash(movies),
      errorMessage);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(fullPageLoader: $fullPageLoader, currentSliderIndex: $currentSliderIndex, selectedCategoryIndex: $selectedCategoryIndex, page: $page, slider: $slider, movieCategories: $movieCategories, movies: $movies, errorMessage: $errorMessage)';
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
      int selectedCategoryIndex,
      int page,
      List<MovieApiEntity> slider,
      List<MovieCategoriesApiEntity> movieCategories,
      List<MovieApiEntity> movies,
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
    Object? selectedCategoryIndex = null,
    Object? page = null,
    Object? slider = null,
    Object? movieCategories = null,
    Object? movies = null,
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
      selectedCategoryIndex: null == selectedCategoryIndex
          ? _self.selectedCategoryIndex
          : selectedCategoryIndex // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      slider: null == slider
          ? _self.slider
          : slider // ignore: cast_nullable_to_non_nullable
              as List<MovieApiEntity>,
      movieCategories: null == movieCategories
          ? _self.movieCategories
          : movieCategories // ignore: cast_nullable_to_non_nullable
              as List<MovieCategoriesApiEntity>,
      movies: null == movies
          ? _self.movies
          : movies // ignore: cast_nullable_to_non_nullable
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
      this.selectedCategoryIndex = 0,
      this.page = 1,
      final List<MovieApiEntity> slider = const [],
      final List<MovieCategoriesApiEntity> movieCategories = const [],
      final List<MovieApiEntity> movies = const [],
      this.errorMessage = ''})
      : _slider = slider,
        _movieCategories = movieCategories,
        _movies = movies;

  @override
  @JsonKey()
  final bool fullPageLoader;
  @override
  @JsonKey()
  final int currentSliderIndex;
  @override
  @JsonKey()
  final int selectedCategoryIndex;
  @override
  @JsonKey()
  final int page;
  final List<MovieApiEntity> _slider;
  @override
  @JsonKey()
  List<MovieApiEntity> get slider {
    if (_slider is EqualUnmodifiableListView) return _slider;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_slider);
  }

  final List<MovieCategoriesApiEntity> _movieCategories;
  @override
  @JsonKey()
  List<MovieCategoriesApiEntity> get movieCategories {
    if (_movieCategories is EqualUnmodifiableListView) return _movieCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movieCategories);
  }

  final List<MovieApiEntity> _movies;
  @override
  @JsonKey()
  List<MovieApiEntity> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
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
      ..add(DiagnosticsProperty('selectedCategoryIndex', selectedCategoryIndex))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('slider', slider))
      ..add(DiagnosticsProperty('movieCategories', movieCategories))
      ..add(DiagnosticsProperty('movies', movies))
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
            (identical(other.selectedCategoryIndex, selectedCategoryIndex) ||
                other.selectedCategoryIndex == selectedCategoryIndex) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._slider, _slider) &&
            const DeepCollectionEquality()
                .equals(other._movieCategories, _movieCategories) &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      fullPageLoader,
      currentSliderIndex,
      selectedCategoryIndex,
      page,
      const DeepCollectionEquality().hash(_slider),
      const DeepCollectionEquality().hash(_movieCategories),
      const DeepCollectionEquality().hash(_movies),
      errorMessage);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(fullPageLoader: $fullPageLoader, currentSliderIndex: $currentSliderIndex, selectedCategoryIndex: $selectedCategoryIndex, page: $page, slider: $slider, movieCategories: $movieCategories, movies: $movies, errorMessage: $errorMessage)';
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
      int selectedCategoryIndex,
      int page,
      List<MovieApiEntity> slider,
      List<MovieCategoriesApiEntity> movieCategories,
      List<MovieApiEntity> movies,
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
    Object? selectedCategoryIndex = null,
    Object? page = null,
    Object? slider = null,
    Object? movieCategories = null,
    Object? movies = null,
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
      selectedCategoryIndex: null == selectedCategoryIndex
          ? _self.selectedCategoryIndex
          : selectedCategoryIndex // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      slider: null == slider
          ? _self._slider
          : slider // ignore: cast_nullable_to_non_nullable
              as List<MovieApiEntity>,
      movieCategories: null == movieCategories
          ? _self._movieCategories
          : movieCategories // ignore: cast_nullable_to_non_nullable
              as List<MovieCategoriesApiEntity>,
      movies: null == movies
          ? _self._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieApiEntity>,
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
