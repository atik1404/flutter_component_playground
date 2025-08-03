import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/common/utils/logger_utils';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/domain/entities/apientity/movie/movie_details_api_entity.dart';
import 'package:flutter_component_playground/domain/usecase/movie/fetch_movie_details_api_usecase.dart';
import 'package:flutter_component_playground/presentation/movie_details/bloc/movie_details_event.dart';
import 'package:flutter_component_playground/presentation/movie_details/bloc/movie_details_state.dart';

final class MovieDetailsBloc
    extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final FetchMovieDetailsApiUsecase _fetchMovieDetailsApiUsecase;
  MovieDetailsBloc({
    required FetchMovieDetailsApiUsecase fetchMovieDetailsApiUsecase,
  })  : _fetchMovieDetailsApiUsecase = fetchMovieDetailsApiUsecase,
        super(const MovieDetailsState()) {
    on<FetchMovieDetailsEvent>(_onFetchMovieDetails);
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
          emit(state.copyWith(
            movieDetails: result.data,
            isLoading: false,
            errorMessage: '',
          ));
          break;
        case FailureResult<MovieDetailsApiEntity>():
          emit(state.copyWith(
            isLoading: false,
            errorMessage: result.exception.description,
          ));
          break;
      }
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
      ));
    }
  }
}
