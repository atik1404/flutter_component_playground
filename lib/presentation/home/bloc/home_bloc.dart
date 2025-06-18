import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/common/utils/logger_utils';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/domain/entities/apientity/home/movie_api_entity.dart';
import 'package:flutter_component_playground/domain/entities/apientity/home/movie_categories_api_entity.dart';
import 'package:flutter_component_playground/domain/usecase/home/fetch_movie_api_usecase.dart';
import 'package:flutter_component_playground/domain/usecase/home/fetch_movie_categories_api_usecase.dart';
import 'package:flutter_component_playground/domain/usecase/home/fetch_upcoming_movies_api_usecase.dart';
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
    on<UpdateSelectedCategory>(_updateSelectedCategoryIndex);
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
    emit(state.copyWith(fullPageLoader: true));
    final result = await _fetchUpcomingMoviesApiUsecase.invoke();

    try {
      switch (result) {
        case SuccessResult<List<MovieApiEntity>>():
          final topMovies = result.data.length > 10
              ? result.data.sublist(0, 10)
              : result.data;

          return emit(
            state.copyWith(slider: topMovies, fullPageLoader: false),
          );

        case FailureResult<List<MovieApiEntity>>():
          return emit(state.copyWith(slider: [], fullPageLoader: false));
      }
    } catch (error) {
      emit(state.copyWith(
        errorMessage: error.toString(),
        fullPageLoader: false,
      ));
    }
  }

  Future<void> _fetchMovieCategories(
    FetchMovieCategories event,
    Emitter<HomeState> emit,
  ) async {
    final result = await _fetchMovieCategoriesApiUsecase.invoke();

    try {
      switch (result) {
        case SuccessResult<List<MovieCategoriesApiEntity>>():
          return emit(state.copyWith(
            movieCategories: result.data,
            selectedCategoryIndex:
                result.data.isNotEmpty ? result.data[0].id : -1,
          ));

        case FailureResult<List<MovieCategoriesApiEntity>>():
          return emit(state.copyWith(movieCategories: []));
      }
    } catch (error) {
      appLog.shout('Error fetching movie categories: $error');
    }
  }

  void _updateSelectedCategoryIndex(
    UpdateSelectedCategory event,
    Emitter<HomeState> emit,
  ) {
    emit(state.copyWith(selectedCategoryIndex: event.index));
  }
}
