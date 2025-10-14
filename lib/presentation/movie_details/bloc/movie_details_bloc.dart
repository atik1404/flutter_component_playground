import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/common/utils/logger_utils';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/domain/entities/apientity/movie/movie_api_entity.dart';
import 'package:flutter_component_playground/domain/entities/apientity/movie/movie_details_api_entity.dart';
import 'package:flutter_component_playground/domain/usecase/movie/fetch_movie_details_api_usecase.dart';
import 'package:flutter_component_playground/domain/usecase/movie/fetch_popular_movies_api_use_case.dart';
import 'package:flutter_component_playground/presentation/movie_details/bloc/movie_details_event.dart';
import 'package:flutter_component_playground/presentation/movie_details/bloc/movie_details_state.dart';

final class MovieDetailsBloc
    extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final FetchMovieDetailsApiUsecase _fetchMovieDetailsApiUsecase;
  final FetchPopularMoviesApiUseCase _fetchPopularMoviesApiUseCase;
  MovieDetailsBloc({
    required FetchMovieDetailsApiUsecase fetchMovieDetailsApiUsecase,
    required FetchPopularMoviesApiUseCase fetchPopularMoviesApiUseCase,
  }) : _fetchMovieDetailsApiUsecase = fetchMovieDetailsApiUsecase,
       _fetchPopularMoviesApiUseCase = fetchPopularMoviesApiUseCase,
       super(const MovieDetailsState()) {
    on<FetchMovieDetailsEvent>(_onFetchMovieDetails);
    on<FetchPopularMovieEvent>(_onFetchPopularMovies);

    add(FetchPopularMovieEvent());
  }

  Future<void> _onFetchMovieDetails(
    FetchMovieDetailsEvent event,
    Emitter<MovieDetailsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    try {
      final result = await _fetchMovieDetailsApiUsecase.invoke(event.movieId);

      switch (result) {
        case SuccessResult<MovieDetailsApiEntity>():
          appLog.info(
            'Movie details fetched successfully: ${result.data.rating}',
          );
          emit(
            state.copyWith(
              movieDetails: result.data,
              isLoading: false,
              errorMessage: '',
            ),
          );
          break;
        case FailureResult<MovieDetailsApiEntity>():
          emit(
            state.copyWith(
              isLoading: false,
              errorMessage: result.exception.description,
            ),
          );
          break;
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }

  Future<void> _onFetchPopularMovies(
    FetchPopularMovieEvent event,
    Emitter<MovieDetailsState> emit,
  ) async {
    final result = await _fetchPopularMoviesApiUseCase.invoke();

    switch (result) {
      case SuccessResult<List<MovieApiEntity>>():
        emit(state.copyWith(popularMovies: result.data, errorMessage: ''));
        break;
      case FailureResult<List<MovieApiEntity>>():
        emit(state.copyWith(popularMovies: []));
        break;
    }
  }
}
