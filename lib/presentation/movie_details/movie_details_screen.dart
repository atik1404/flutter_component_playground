import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/common/extensions/converter_extension.dart';
import 'package:flutter_component_playground/designsystem/extensions/theme_context_extension.dart';
import 'package:flutter_component_playground/domain/entities/apientity/movie/movie_api_entity.dart';
import 'package:flutter_component_playground/localization/localize_extension.dart';
import 'package:flutter_component_playground/presentation/movie_details/bloc/movie_details_bloc.dart';
import 'package:flutter_component_playground/presentation/movie_details/bloc/movie_details_event.dart';
import 'package:flutter_component_playground/presentation/movie_details/bloc/movie_details_state.dart';
import 'package:flutter_component_playground/ui/widgets/network_image_loader.dart';
import 'package:flutter_component_playground/ui/widgets/spacer_box.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jiffy/jiffy.dart';

class MovieDetailsScreen extends StatefulWidget {
  final int movieId;

  const MovieDetailsScreen({super.key, required this.movieId});

  @override
  State<MovieDetailsScreen> createState() => _MovieDetailsScreenState();
}

class _MovieDetailsScreenState extends State<MovieDetailsScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    context.read<MovieDetailsBloc>().add(
      FetchMovieDetailsEvent(widget.movieId),
    );
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildMovieDetailsMainUi());
  }

  Widget _buildMovieDetailsMainUi() {
    final spacingSizes = context.spacingSizes;
    final shapeRadius = context.shapeRadius;
    final mediaQuery = MediaQuery.of(context).size;

    return BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.errorMessage?.isNotEmpty == true) {
          return Center(child: Text(state.errorMessage!));
        }
        final movieDetails = state.movieDetails;
        if (movieDetails == null) {
          return Center(
            child: Text(context.getString.error_message_no_data_found),
          );
        }

        return Stack(
          children: [
            _buildMainPosterSection(
              context,
              posterImage: movieDetails.posterPath,
            ),
            SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Container(
                margin: EdgeInsets.only(top: mediaQuery.height * 0.25),
                padding: EdgeInsets.all(spacingSizes.large),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(shapeRadius.large),
                    topRight: Radius.circular(shapeRadius.large),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildMovieTitleAndRating(
                      context,
                      title: movieDetails.movieTitle,
                      rating: movieDetails.rating.toString(),
                    ),
                    SpacerBox(height: spacingSizes.medium),
                    _buildGenreChips(movieDetails.genres),
                    SpacerBox(height: spacingSizes.medium),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildMovieMetaDetail(
                          context,
                          context.getString.title_length,
                          movieDetails.duration.toHoursAndMinutes(),
                        ),
                        _buildMovieMetaDetail(
                          context,
                          context.getString.title_language,
                          movieDetails.originalLanguage.toUpperCase(),
                        ),
                        _buildMovieMetaDetail(
                          context,
                          context.getString.title_status,
                          movieDetails.status,
                        ),
                      ],
                    ),
                    SpacerBox(height: spacingSizes.large),
                    _buildMovieMetaDetail(
                          context,
                          context.getString.title_production_countries,
                          movieDetails.productionCountries.join(", "),
                        ),
                        SpacerBox(height: spacingSizes.large),
                    _buildMovieDescriptionSection(
                      context,
                      movieDetails.movieDescription,
                    ),
                    SpacerBox(height: spacingSizes.large),
                    Text(
                      context.getString.title_popular_movies,
                      style: context.typography.titleSmallBold.copyWith(
                        color: context.textColors.primaryTextColor,
                      ),
                    ),
                    SpacerBox(height: spacingSizes.small),
                    _buildPopularMoviesList(state.popularMovies),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildMainPosterSection(
    BuildContext context, {
    required String posterImage,
  }) {
    final mediaQuery = MediaQuery.of(context).size;

    return NetworkImageLoader(
      imageUrl: posterImage,
      height: mediaQuery.height * 0.30,
    );
  }

  Widget _buildMovieTitleAndRating(
    BuildContext context, {
    required String title,
    required String rating,
  }) {
    final textColor = context.textColors;
    final smallSpacing = context.spacingSizes.small;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.typography.titleSmallMedium.copyWith(
            color: textColor.primaryTextColor,
          ),
        ),
        SpacerBox(height: smallSpacing),
        Row(
          children: [
            Icon(Icons.star, size: 14.w, color: Colors.amber),
            SpacerBox(width: context.spacingSizes.xSmall),
            Text(
              context.getString.placeholder_movie_rating(rating),
              style: context.typography.bodyExtraSmallLight.copyWith(
                color: context.textColors.primaryTextColor,
              ),
            ),
          ],
        ),
        SpacerBox(height: smallSpacing),
      ],
    );
  }

  Widget _buildGenreChips(List<String> category) {
    return SizedBox(
      height: 35.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        itemCount: category.length,
        itemBuilder: (context, index) =>
            _buildGenreChip(context, category[index]),
      ),
    );
  }

  Widget _buildGenreChip(BuildContext context, String category) {
    return Container(
      margin: EdgeInsets.only(right: context.spacingSizes.medium),
      padding: EdgeInsets.symmetric(
        horizontal: context.spacingSizes.large,
        vertical: context.spacingSizes.xSmall,
      ),
      decoration: BoxDecoration(
        color: context.backgroundColors.secondaryBackgroundColor,
        borderRadius: BorderRadius.circular(context.shapeRadius.large),
      ),
      child: Center(
        child: Text(
          category,
          style: context.typography.bodyMedium.copyWith(
            color: context.textColors.primaryTextColor,
          ),
        ),
      ),
    );
  }

  Widget _buildMovieMetaDetail(
    BuildContext context,
    String title,
    String subtitle,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.typography.bodyMediumLight.copyWith(
            color: context.textColors.secondaryTextColor,
          ),
        ),
        SpacerBox(height: context.spacingSizes.small),
        Text(
          subtitle,
          style: context.typography.bodyMediumSemiBold.copyWith(
            color: context.textColors.primaryTextColor,
          ),
        ),
      ],
    );
  }

  Widget _buildMovieDescriptionSection(
    BuildContext context,
    String description,
  ) {
    final textColor = context.textColors;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.getString.title_description,
          style: context.typography.titleSmallBold.copyWith(
            color: textColor.primaryTextColor,
          ),
        ),
        SpacerBox(height: context.spacingSizes.small),
        Text(
          "$description\n$description\n$description",
          style: context.typography.bodySmallRegular.copyWith(
            color: textColor.secondaryTextColor,
          ),
        ),
      ],
    );
  }

  Widget _buildPopularMoviesList(List<MovieApiEntity> popularMovies) {
    return SizedBox(
      height: 250.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        itemCount: popularMovies.length,
        itemBuilder: (context, index) =>
            _buildPopularMovieCard(context, popularMovies[index]),
      ),
    );
  }

  Widget _buildPopularMovieCard(BuildContext context, MovieApiEntity movie) {
    final textColor = context.textColors;
    final typography = context.typography;
    final spacingSizes = context.spacingSizes;
    final secondaryTextStyle = typography.bodyExtraSmallLight.copyWith(
      color: context.textColors.secondaryTextColor,
    );

    return Padding(
      padding: EdgeInsets.only(right: spacingSizes.large),
      child: GestureDetector(
        onTap: () {},
        child: SizedBox(
          width: 120.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  // Movie poster image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      context.shapeRadius.medium,
                    ),
                    child: SizedBox(
                      height: 150.h,
                      child: NetworkImageLoader(imageUrl: movie.posterPath),
                    ),
                  ),
                  // Favorite icon overlay
                  Positioned(
                    top: spacingSizes.medium,
                    right: spacingSizes.medium,
                    child: Container(
                      padding: EdgeInsets.all(spacingSizes.xSmall),
                      decoration: BoxDecoration(
                        color: context.buttonColors.onPrimary.withAlpha(50),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.favorite_border,
                        size: 20.w,
                        color: Colors.pink.shade200,
                      ),
                    ),
                  ),

                  Positioned(
                    top: spacingSizes.medium,
                    left: spacingSizes.medium,
                    child: Container(
                      padding: EdgeInsets.all(spacingSizes.xSmall),
                      decoration: BoxDecoration(
                        color: context.backgroundColors.primaryBackgroundColor
                            .withAlpha(80),
                        borderRadius: BorderRadius.circular(
                          context.shapeRadius.large,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: spacingSizes.medium,
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.star, size: 14.w, color: Colors.blue),
                            Text(
                              "${movie.voteAverage} (${movie.voteCount})",
                              style: typography.bodySmallBold.copyWith(
                                color: context.textColors.primaryTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: context.spacingSizes.medium),
              // Movie title
              Text(
                maxLines: 2,
                movie.title,
                style: context.typography.bodyMediumBold.copyWith(
                  color: textColor.primaryTextColor,
                ),
              ),
              SizedBox(height: context.spacingSizes.xSmall),

              Text(
                context.getString.placeholder_released_on(
                  Jiffy.parse(movie.releaseDate).yMMMd,
                ),
                style: secondaryTextStyle,
              ),
              Text(
                context.getString.placeholder_movie_language(
                  movie.originalLanguage,
                ),
                style: secondaryTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
