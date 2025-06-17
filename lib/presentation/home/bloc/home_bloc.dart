import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/common/utils/logger_utils';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/domain/entities/apientity/home/movie_api_entity.dart';
import 'package:flutter_component_playground/domain/usecase/home/fetch_upcoming_movies_api_usecase.dart';
import 'package:flutter_component_playground/presentation/home/bloc/home_event.dart';
import 'package:flutter_component_playground/presentation/home/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final FetchUpcomingMoviesApiUsecase _fetchUpcomingMoviesApiUsecase;

  HomeBloc({
    required FetchUpcomingMoviesApiUsecase fetchUpcomingMoviesApiUsecase,
  })  : _fetchUpcomingMoviesApiUsecase = fetchUpcomingMoviesApiUsecase,
        super(const HomeState()) {
    on<UpdateSliderIndex>(_updateSliderIndex);
    on<FetchUpcomingMovies>(_fetchUpcomingMovies);
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
          appLog.info('MovieListSize: ${result.data.length}');
          return emit(
              state.copyWith(slider: result.data, fullPageLoader: false),);

        case FailureResult<List<MovieApiEntity>>():
          appLog.info('**error fetching upcoming movies: $result');
          return emit(state.copyWith(slider: [], fullPageLoader: false));
      }
    } catch (error) {
      appLog.info('Error fetching upcoming movies: $error');
      emit(state.copyWith(
        errorMessage: error.toString(),
        fullPageLoader: false,
      ));
    }
  }
}
