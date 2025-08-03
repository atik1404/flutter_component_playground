import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_component_playground/designsystem/extensions/theme_context_extension.dart';
import 'package:flutter_component_playground/localization/localize_extension.dart';
import 'package:flutter_component_playground/ui/widgets/network_image_loader.dart';
import 'package:flutter_component_playground/ui/widgets/spacer_box.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final spacingSizes = context.spacingSizes;
    final shapeRadius = context.shapeRadius;
    final mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          _buildMainPosterSection(context),
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
                  _buildMovieTitleAndRating(context),
                  SpacerBox(height: spacingSizes.medium),
                  _buildGenreChips(),
                  SpacerBox(height: spacingSizes.medium),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildMovieMetaDetail(context, "Length", "2h 28m"),
                      _buildMovieMetaDetail(context, "Language", "English"),
                      _buildMovieMetaDetail(context, "Rating", "PG-13"),
                    ],
                  ),
                  SpacerBox(height: spacingSizes.large),
                  _buildMovieDescriptionSection(context),
                  SpacerBox(height: spacingSizes.large),
                  Text(
                    "Related Movies",
                    style: context.typography.titleSmallBold.copyWith(
                      color: context.textColors.primaryTextColor,
                    ),
                  ),
                  SpacerBox(height: spacingSizes.small),
                  _buildRelatedMoviesList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainPosterSection(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return NetworkImageLoader(
      imageUrl: "/lVgE5oLzf7ABmzyASEVcjYyHI41.jpg",
      height: mediaQuery.height * 0.30,
    );
  }

  Widget _buildMovieTitleAndRating(BuildContext context) {
    final textColor = context.textColors;
    final smallSpacing = context.spacingSizes.small;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Spiderman: No Way Home",
          style: context.typography.titleSmallMedium.copyWith(
            color: textColor.primaryTextColor,
          ),
        ),
        SpacerBox(height: smallSpacing),
        Row(
          children: [
            Icon(
              Icons.star,
              size: 14.w,
              color: Colors.amber,
            ),
            SpacerBox(width: context.spacingSizes.xSmall),
            Text(
              "8.5/10 Imdb",
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

  Widget _buildGenreChips() {
    return SizedBox(
      height: 35.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) => _buildGenreChip(
          context,
          "Action",
        ),
      ),
    );
  }

  Widget _buildGenreChip(
    BuildContext context,
    String category,
  ) {
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

  Widget _buildMovieDescriptionSection(BuildContext context) {
    final textColor = context.textColors;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Description",
          style: context.typography.titleSmallBold.copyWith(
            color: textColor.primaryTextColor,
          ),
        ),
        SpacerBox(height: context.spacingSizes.small),
        Text(
          "Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a Super Hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a Super Hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a Super Hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a Super Hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a Super Hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a Super Hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.",
          style: context.typography.bodySmallRegular.copyWith(
            color: textColor.secondaryTextColor,
          ),
        ),
      ],
    );
  }

  Widget _buildRelatedMoviesList() {
    return SizedBox(
      height: 250.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) => _buildRelatedMovieCard(context),
      ),
    );
  }

  Widget _buildRelatedMovieCard(BuildContext context) {
    final textColor = context.textColors;
    final typography = context.typography;
    final spacingSizes = context.spacingSizes;
    final secondaryTextStyle = typography.bodySmallLight.copyWith(
      color: context.textColors.secondaryTextColor,
    );

    return Padding(
      padding: EdgeInsets.only(right: spacingSizes.large),
      child: GestureDetector(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                // Movie poster image
                ClipRRect(
                  borderRadius:
                      BorderRadius.circular(context.shapeRadius.medium),
                  child: SizedBox(
                    width: 120.w,
                    height: 150.h,
                    child: const NetworkImageLoader(
                        imageUrl: "/lVgE5oLzf7ABmzyASEVcjYyHI41.jpg"),
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
                      borderRadius:
                          BorderRadius.circular(context.shapeRadius.large),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: spacingSizes.medium,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 14.w,
                            color: Colors.blue,
                          ),
                          Text(
                            "8.5/10",
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
              maxLines: 1,
              "Movie Title",
              style: context.typography.bodyMediumBold.copyWith(
                color: textColor.primaryTextColor,
              ),
            ),
            SizedBox(height: context.spacingSizes.xSmall),

            Text(
              "29th Dec 2023",
              style: secondaryTextStyle,
            ),
            Text(
              context.getString.placeholder_movie_language(
                "EN",
              ),
              style: secondaryTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
