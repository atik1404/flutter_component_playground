
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_event.freezed.dart';

@freezed
class HomeEvent with _$HomeEvent{
  const factory HomeEvent.updateSliderIndex(int index) = UpdateSliderIndex;
  const factory HomeEvent.fetchUpcomingMovies() = FetchUpcomingMovies;
  const factory HomeEvent.fetchMovies(int categoryId) = FetchMovies;
  const factory HomeEvent.fetchMoreMovies(int categoryId) = FetchMoreMovies;
  const factory HomeEvent.fetchMovieCategories() = FetchMovieCategories;
  const factory HomeEvent.updateSelectedCategory(int categoryId) = UpdateSelectedCategory;
  const factory HomeEvent.updatePage(int page) = UpdatePage;
}