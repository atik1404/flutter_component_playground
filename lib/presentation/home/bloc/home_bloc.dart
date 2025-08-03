import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/common/utils/logger_utils';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/domain/entities/apientity/movie/movie_api_entity.dart';
import 'package:flutter_component_playground/domain/entities/apientity/movie/movie_categories_api_entity.dart';
import 'package:flutter_component_playground/domain/entities/params/movies_api_params.dart';
import 'package:flutter_component_playground/domain/usecase/movie/fetch_movie_api_usecase.dart';
import 'package:flutter_component_playground/domain/usecase/movie/fetch_movie_categories_api_usecase.dart';
import 'package:flutter_component_playground/domain/usecase/movie/fetch_upcoming_movies_api_usecase.dart';
import 'package:flutter_component_playground/presentation/home/bloc/home_event.dart';
import 'package:flutter_component_playground/presentation/home/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final FetchUpcomingMoviesApiUsecase _fetchUpcomingMoviesApiUsecase;
  final FetchMovieCategoriesApiUsecase _fetchMovieCategoriesApiUsecase;
  final FetchMovieApiUsecase _fetchMovieApiUsecase;

  HomeBloc({
    required FetchUpcomingMoviesApiUsecase fetchUpcomingMoviesApiUsecase,
    required FetchMovieCategoriesApiUsecase fetchMovieCategoriesApiUsecase,
    required FetchMovieApiUsecase fetchMovieApiUsecase,
  })  : _fetchUpcomingMoviesApiUsecase = fetchUpcomingMoviesApiUsecase,
        _fetchMovieCategoriesApiUsecase = fetchMovieCategoriesApiUsecase,
        _fetchMovieApiUsecase = fetchMovieApiUsecase,
        super(const HomeState()) {
    on<UpdateSliderIndex>(_updateSliderIndex);
    on<FetchUpcomingMovies>(_fetchUpcomingMovies);
    on<FetchMovieCategories>(_fetchMovieCategories);
    on<UpdateSelectedCategory>(_updateSelectedCategory);
    on<FetchMovies>(_fetchMovies);
    on<FetchMoreMovies>(_fetchMoreMovies);
  }

  void _updateSliderIndex(
    UpdateSliderIndex event,
    Emitter<HomeState> emit,
  ) {
    emit(state.copyWith(currentSliderIndex: event.index));
  }

  void _fetchUpcomingMovies(
    FetchUpcomingMovies event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isSliderLoading: true));
    final result = await _fetchUpcomingMoviesApiUsecase.invoke();

    try {
      switch (result) {
        case SuccessResult<List<MovieApiEntity>>():
          final topMovies = result.data.length > 10
              ? result.data.sublist(0, 10)
              : result.data;

          return emit(
            state.copyWith(slider: topMovies, isSliderLoading: false),
          );

        case FailureResult<List<MovieApiEntity>>():
          return emit(state.copyWith(slider: [], isSliderLoading: false));
      }
    } catch (error) {
      emit(state.copyWith(
        errorMessage: error.toString(),
        isSliderLoading: false,
      ));
    }
  }

  Future<void> _fetchMovieCategories(
    FetchMovieCategories event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isCategoryLoading: true));
    final result = await _fetchMovieCategoriesApiUsecase.invoke();

    try {
      switch (result) {
        case SuccessResult<List<MovieCategoriesApiEntity>>():
          add(FetchMovies(result.data.isNotEmpty ? result.data[0].id : -1));
          return emit(state.copyWith(
            isCategoryLoading: false,
            movieCategories: result.data,
            selectedCategoryIndex:
                result.data.isNotEmpty ? result.data[0].id : -1,
          ));

        case FailureResult<List<MovieCategoriesApiEntity>>():
          return emit(state.copyWith(
            movieCategories: [],
            isCategoryLoading: false,
          ));
      }
    } catch (error) {
      appLog.shout('Error fetching movie categories: $error');
    }
  }

  void _updateSelectedCategory(
    UpdateSelectedCategory event,
    Emitter<HomeState> emit,
  ) {
    if (state.selectedCategoryIndex == event.categoryId) return;
    emit(state.copyWith(
        selectedCategoryIndex: event.categoryId,
        page: 1,
        movies: [],
        isLastPage: false,));
    add(FetchMovies(event.categoryId));
  }

  void _fetchMovies(
    FetchMovies event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isMoviesLoading: true));
    final result = await _fetchMovieApiUsecase.invoke(
      MoviesApiParams(page: state.page, categoryId: event.categoryId),
    );

    try {
      switch (result) {
        case SuccessResult<List<MovieApiEntity>>():
          return emit(
            state.copyWith(
              movies: result.data,
              isMoviesLoading: false,
            ),
          );

        case FailureResult<List<MovieApiEntity>>():
          return emit(state.copyWith(movies: [], isMoviesLoading: false));
      }
    } catch (error) {
      emit(state.copyWith(
        errorMessage: error.toString(),
        isMoviesLoading: false,
      ));
    }
  }

  void _fetchMoreMovies(
    FetchMoreMovies event,
    Emitter<HomeState> emit,
  ) async {
    if (state.isLoadingMore || state.isLastPage) return;

    emit(state.copyWith(isLoadingMore: true));
    final result = await _fetchMovieApiUsecase.invoke(
      MoviesApiParams(page: state.page + 1, categoryId: event.categoryId),
    );

    try {
      switch (result) {
        case SuccessResult<List<MovieApiEntity>>():
          if (result.data.isEmpty) {
            return emit(state.copyWith(isLastPage: true, isLoadingMore: false));
          }
          return emit(
            state.copyWith(
              movies: [...state.movies, ...result.data],
              page: state.page + 1,
              isLoadingMore: false,
            ),
          );

        case FailureResult<List<MovieApiEntity>>():
          return emit(state.copyWith(isLoadingMore: false));
      }
    } catch (error) {
      emit(state.copyWith(
        errorMessage: error.toString(),
        isLoadingMore: false,
      ));
    }
  }
}
