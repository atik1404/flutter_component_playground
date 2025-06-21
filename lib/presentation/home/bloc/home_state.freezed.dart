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
  bool get isSliderLoading;
  bool get isCategoryLoading;
  bool get isMoviesLoading;
  int get currentSliderIndex;
  int get selectedCategoryIndex;
  int get page;
  List<MovieApiEntity> get slider;
  List<MovieCategoriesApiEntity> get movieCategories;
  List<MovieApiEntity> get movies;
  bool get isLastPage;
  bool get isLoadingMore;
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
      ..add(DiagnosticsProperty('isSliderLoading', isSliderLoading))
      ..add(DiagnosticsProperty('isCategoryLoading', isCategoryLoading))
      ..add(DiagnosticsProperty('isMoviesLoading', isMoviesLoading))
      ..add(DiagnosticsProperty('currentSliderIndex', currentSliderIndex))
      ..add(DiagnosticsProperty('selectedCategoryIndex', selectedCategoryIndex))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('slider', slider))
      ..add(DiagnosticsProperty('movieCategories', movieCategories))
      ..add(DiagnosticsProperty('movies', movies))
      ..add(DiagnosticsProperty('isLastPage', isLastPage))
      ..add(DiagnosticsProperty('isLoadingMore', isLoadingMore))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeState &&
            (identical(other.isSliderLoading, isSliderLoading) ||
                other.isSliderLoading == isSliderLoading) &&
            (identical(other.isCategoryLoading, isCategoryLoading) ||
                other.isCategoryLoading == isCategoryLoading) &&
            (identical(other.isMoviesLoading, isMoviesLoading) ||
                other.isMoviesLoading == isMoviesLoading) &&
            (identical(other.currentSliderIndex, currentSliderIndex) ||
                other.currentSliderIndex == currentSliderIndex) &&
            (identical(other.selectedCategoryIndex, selectedCategoryIndex) ||
                other.selectedCategoryIndex == selectedCategoryIndex) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other.slider, slider) &&
            const DeepCollectionEquality()
                .equals(other.movieCategories, movieCategories) &&
            const DeepCollectionEquality().equals(other.movies, movies) &&
            (identical(other.isLastPage, isLastPage) ||
                other.isLastPage == isLastPage) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isSliderLoading,
      isCategoryLoading,
      isMoviesLoading,
      currentSliderIndex,
      selectedCategoryIndex,
      page,
      const DeepCollectionEquality().hash(slider),
      const DeepCollectionEquality().hash(movieCategories),
      const DeepCollectionEquality().hash(movies),
      isLastPage,
      isLoadingMore,
      errorMessage);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(isSliderLoading: $isSliderLoading, isCategoryLoading: $isCategoryLoading, isMoviesLoading: $isMoviesLoading, currentSliderIndex: $currentSliderIndex, selectedCategoryIndex: $selectedCategoryIndex, page: $page, slider: $slider, movieCategories: $movieCategories, movies: $movies, isLastPage: $isLastPage, isLoadingMore: $isLoadingMore, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) =
      _$HomeStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isSliderLoading,
      bool isCategoryLoading,
      bool isMoviesLoading,
      int currentSliderIndex,
      int selectedCategoryIndex,
      int page,
      List<MovieApiEntity> slider,
      List<MovieCategoriesApiEntity> movieCategories,
      List<MovieApiEntity> movies,
      bool isLastPage,
      bool isLoadingMore,
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
    Object? isSliderLoading = null,
    Object? isCategoryLoading = null,
    Object? isMoviesLoading = null,
    Object? currentSliderIndex = null,
    Object? selectedCategoryIndex = null,
    Object? page = null,
    Object? slider = null,
    Object? movieCategories = null,
    Object? movies = null,
    Object? isLastPage = null,
    Object? isLoadingMore = null,
    Object? errorMessage = null,
  }) {
    return _then(_self.copyWith(
      isSliderLoading: null == isSliderLoading
          ? _self.isSliderLoading
          : isSliderLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isCategoryLoading: null == isCategoryLoading
          ? _self.isCategoryLoading
          : isCategoryLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isMoviesLoading: null == isMoviesLoading
          ? _self.isMoviesLoading
          : isMoviesLoading // ignore: cast_nullable_to_non_nullable
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
      isLastPage: null == isLastPage
          ? _self.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _self.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {this.isSliderLoading = false,
      this.isCategoryLoading = false,
      this.isMoviesLoading = false,
      this.currentSliderIndex = 0,
      this.selectedCategoryIndex = 0,
      this.page = 1,
      final List<MovieApiEntity> slider = const [],
      final List<MovieCategoriesApiEntity> movieCategories = const [],
      final List<MovieApiEntity> movies = const [],
      this.isLastPage = false,
      this.isLoadingMore = false,
      this.errorMessage = ''})
      : _slider = slider,
        _movieCategories = movieCategories,
        _movies = movies;

  @override
  @JsonKey()
  final bool isSliderLoading;
  @override
  @JsonKey()
  final bool isCategoryLoading;
  @override
  @JsonKey()
  final bool isMoviesLoading;
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
  final bool isLastPage;
  @override
  @JsonKey()
  final bool isLoadingMore;
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
      ..add(DiagnosticsProperty('isSliderLoading', isSliderLoading))
      ..add(DiagnosticsProperty('isCategoryLoading', isCategoryLoading))
      ..add(DiagnosticsProperty('isMoviesLoading', isMoviesLoading))
      ..add(DiagnosticsProperty('currentSliderIndex', currentSliderIndex))
      ..add(DiagnosticsProperty('selectedCategoryIndex', selectedCategoryIndex))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('slider', slider))
      ..add(DiagnosticsProperty('movieCategories', movieCategories))
      ..add(DiagnosticsProperty('movies', movies))
      ..add(DiagnosticsProperty('isLastPage', isLastPage))
      ..add(DiagnosticsProperty('isLoadingMore', isLoadingMore))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            (identical(other.isSliderLoading, isSliderLoading) ||
                other.isSliderLoading == isSliderLoading) &&
            (identical(other.isCategoryLoading, isCategoryLoading) ||
                other.isCategoryLoading == isCategoryLoading) &&
            (identical(other.isMoviesLoading, isMoviesLoading) ||
                other.isMoviesLoading == isMoviesLoading) &&
            (identical(other.currentSliderIndex, currentSliderIndex) ||
                other.currentSliderIndex == currentSliderIndex) &&
            (identical(other.selectedCategoryIndex, selectedCategoryIndex) ||
                other.selectedCategoryIndex == selectedCategoryIndex) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._slider, _slider) &&
            const DeepCollectionEquality()
                .equals(other._movieCategories, _movieCategories) &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            (identical(other.isLastPage, isLastPage) ||
                other.isLastPage == isLastPage) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isSliderLoading,
      isCategoryLoading,
      isMoviesLoading,
      currentSliderIndex,
      selectedCategoryIndex,
      page,
      const DeepCollectionEquality().hash(_slider),
      const DeepCollectionEquality().hash(_movieCategories),
      const DeepCollectionEquality().hash(_movies),
      isLastPage,
      isLoadingMore,
      errorMessage);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(isSliderLoading: $isSliderLoading, isCategoryLoading: $isCategoryLoading, isMoviesLoading: $isMoviesLoading, currentSliderIndex: $currentSliderIndex, selectedCategoryIndex: $selectedCategoryIndex, page: $page, slider: $slider, movieCategories: $movieCategories, movies: $movies, isLastPage: $isLastPage, isLoadingMore: $isLoadingMore, errorMessage: $errorMessage)';
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
      {bool isSliderLoading,
      bool isCategoryLoading,
      bool isMoviesLoading,
      int currentSliderIndex,
      int selectedCategoryIndex,
      int page,
      List<MovieApiEntity> slider,
      List<MovieCategoriesApiEntity> movieCategories,
      List<MovieApiEntity> movies,
      bool isLastPage,
      bool isLoadingMore,
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
    Object? isSliderLoading = null,
    Object? isCategoryLoading = null,
    Object? isMoviesLoading = null,
    Object? currentSliderIndex = null,
    Object? selectedCategoryIndex = null,
    Object? page = null,
    Object? slider = null,
    Object? movieCategories = null,
    Object? movies = null,
    Object? isLastPage = null,
    Object? isLoadingMore = null,
    Object? errorMessage = null,
  }) {
    return _then(_HomeState(
      isSliderLoading: null == isSliderLoading
          ? _self.isSliderLoading
          : isSliderLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isCategoryLoading: null == isCategoryLoading
          ? _self.isCategoryLoading
          : isCategoryLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isMoviesLoading: null == isMoviesLoading
          ? _self.isMoviesLoading
          : isMoviesLoading // ignore: cast_nullable_to_non_nullable
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
      isLastPage: null == isLastPage
          ? _self.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _self.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
