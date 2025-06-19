import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/common/utils/logger_utils';
import 'package:flutter_component_playground/core/config/app_core_env.dart';
import 'package:flutter_component_playground/core/di/module/app_di_module.dart';
import 'package:flutter_component_playground/core/sharedpref/shared_pref_key.dart';
import 'package:flutter_component_playground/core/sharedpref/shared_prefs.dart';
import 'package:flutter_component_playground/designsystem/extensions/theme_context_extension.dart';
import 'package:flutter_component_playground/designsystem/resources/app_icons.dart';
import 'package:flutter_component_playground/designsystem/resources/app_images.dart';
import 'package:flutter_component_playground/domain/entities/apientity/home/movie_api_entity.dart';
import 'package:flutter_component_playground/domain/entities/apientity/home/movie_categories_api_entity.dart';
import 'package:flutter_component_playground/presentation/home/bloc/api_state.dart';
import 'package:flutter_component_playground/presentation/home/bloc/home_bloc.dart';
import 'package:flutter_component_playground/presentation/home/bloc/home_event.dart';
import 'package:flutter_component_playground/presentation/home/bloc/home_state.dart';
import 'package:flutter_component_playground/ui/widgets/app_text_field.dart';
import 'package:flutter_component_playground/ui/widgets/scaffold_appbar.dart';
import 'package:flutter_component_playground/ui/widgets/shimmer_effect/carosel_slider_shimmer_efect.dart';
import 'package:flutter_component_playground/ui/widgets/shimmer_effect/movie_category_shimmer_effect.dart';
import 'package:flutter_component_playground/ui/widgets/shimmer_effect/movie_shimmer_effect.dart';
import 'package:flutter_component_playground/ui/widgets/spacer_box.dart';
import 'package:flutter_component_playground/localization/localize_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:jiffy/jiffy.dart';

/// HomeScreenContent displays the main dashboard content for the home tab,
/// including a toolbar, slider, categories, and a grid of movie items.
class HomeScreenContent extends StatelessWidget {
  HomeScreenContent({super.key});

  final SharedPrefs _sharedPrefs = di.get<SharedPrefs>();

  @override
  Widget build(BuildContext context) {
    final spacingSizes = context.spacingSizes;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeBloc>().add(
            const FetchUpcomingMovies(),
          );

      context.read<HomeBloc>().add(
            const FetchMovieCategories(),
          );
    });

    return ScaffoldAppbar(
      body: Column(
        children: [
          // Top toolbar with avatar, greeting, and search
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: spacingSizes.base,
              vertical: spacingSizes.base,
            ),
            child: Column(
              children: [
                _buildInfoHeader(context),
                SizedBox(height: spacingSizes.large),
                _buildSearchBar(context),
              ],
            ),
          ),
          // Main scrollable content
          Expanded(
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Container(
                padding: EdgeInsets.all(spacingSizes.base),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildMovieSlider(),
                    SizedBox(height: spacingSizes.large),
                    _buildMovieCategory(),
                    SizedBox(height: spacingSizes.large),
                    _buildMovieItemList(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Builds the top toolbar with avatar, greeting, and search field.
  Widget _buildInfoHeader(BuildContext context) {
    final spacingSizes = context.spacingSizes;
    final iconSizes = context.iconSizes;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            // User avatar
            ClipOval(
              child: Image.network(
                AppImages.imgAvatar,
                width: 50.w,
                height: 50.h,
                fit: BoxFit.fill,
              ),
            ),
            SpacerBox(width: spacingSizes.base),
            // Greeting and welcome text
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.getString.placeholder_user_greeting(
                    _sharedPrefs.getString(key: SharedPrefKey.fullName),
                  ),
                  style: context.typography.titleSmallBold
                      .copyWith(color: context.textColors.primaryTextColor),
                ),
                SizedBox(height: spacingSizes.xSmall),
                Text(
                  context.getString.msg_greeting,
                  style: context.typography.bodySmallLight
                      .copyWith(color: context.textColors.secondaryTextColor),
                ),
              ],
            ),
            const Spacer(),
            // Menu icon button
            IconButton(
              icon: SvgPicture.asset(
                AppIcons.icNavMenu,
                width: iconSizes.base,
                height: iconSizes.base,
                colorFilter: ColorFilter.mode(
                  context.materialColors.onSurface,
                  BlendMode.srcIn,
                ),
              ),
              onPressed: () {
                Fluttertoast.showToast(msg: "Menu clicked");
              },
            ),
          ],
        ),
        // Search field
      ],
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    final iconSizes = context.iconSizes;

    return AppTextField(
      hintText: "Search here",
      keyboardType: TextInputType.webSearch,
      textInputAction: TextInputAction.search,
      prefixIcon: Icon(
        Icons.search,
        color: context.materialColors.onSurface,
      ),
      suffixIcon: Padding(
        padding: EdgeInsets.all(12.w),
        child: SvgPicture.asset(
          AppIcons.icFilter,
          width: iconSizes.medium,
          height: iconSizes.medium,
          colorFilter: ColorFilter.mode(
            context.materialColors.onSurface,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }

  /// Builds the image slider with page indicator.
  Widget _buildMovieSlider() {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.isSliderLoading) {
          return const CaroselSliderShimmerEfect();
        }

        return Column(
          children: [
            CarouselSlider(
              items: state.slider.map((slider) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: context.backgroundColors.primaryBackgroundColor,
                        borderRadius: BorderRadius.circular(
                          context.shapeRadius.base,
                        ),
                        image: DecorationImage(
                          image: NetworkImage(
                            AppCoreEnv().imageBaseUrl + slider.backdropPath,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                height: 200.h,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                enlargeCenterPage: true,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  context.read<HomeBloc>().add(
                        UpdateSliderIndex(index),
                      );
                },
              ),
            ),
            SizedBox(height: context.spacingSizes.base),
            _buildSliderPageIndicator(context),
          ],
        );
        // return state.sliderState.when(
        //   initial: () => const SizedBox(),
        //   loading: () => const CaroselSliderShimmerEfect(),
        //   success: (slider) =>
        //   error: (message) => const SizedBox(),
        // );
      },
    );
  }

  /// Builds the slider page indicator.
  Widget _buildSliderPageIndicator(BuildContext context) {
    final materialColors = context.materialColors;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:
          List.generate(context.watch<HomeBloc>().state.slider.length, (index) {
        final isCurrentPage =
            index == context.watch<HomeBloc>().state.currentSliderIndex;

        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: EdgeInsets.only(right: context.spacingSizes.medium),
          width: isCurrentPage ? 20.w : 10.w,
          height: 3.h,
          decoration: BoxDecoration(
            color: isCurrentPage
                ? materialColors.primary
                : context.strokeColors.secondaryStrokeColor,
            borderRadius: BorderRadius.circular(5.r),
          ),
        );
      }),
    );
  }

  /// Builds the horizontal list of movie categories.
  Widget _buildMovieCategory() {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.isCategoryLoading) {
          return const MovieCategoryShimmerEffect();
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.getString.title_category,
              style: context.typography.titleMediumBold.copyWith(
                color: context.textColors.primaryTextColor,
              ),
            ),
            SizedBox(height: context.spacingSizes.base),
            SizedBox(
              height: 35.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: state.movieCategories.length,
                itemBuilder: (context, index) => _buildMovieCategoryItem(
                  context,
                  state.movieCategories[index],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  /// Builds a single category item with selection highlight.
  Widget _buildMovieCategoryItem(
    BuildContext context,
    MovieCategoriesApiEntity category,
  ) {
    final isCategorySelected =
        context.watch<HomeBloc>().state.selectedCategoryIndex == category.id;

    return GestureDetector(
      onTap: () {
        context.read<HomeBloc>().add(
              UpdateSelectedCategory(category.id),
            );
        context.read<HomeBloc>().add(
              FetchMovies(category.id),
            );
      },
      child: Container(
        margin: EdgeInsets.only(right: context.spacingSizes.medium),
        padding: EdgeInsets.symmetric(
          horizontal: context.spacingSizes.large,
          vertical: context.spacingSizes.xSmall,
        ),
        decoration: BoxDecoration(
          color: isCategorySelected
              ? context.buttonColors.primary
              : context.backgroundColors.secondaryBackgroundColor,
          borderRadius: BorderRadius.circular(context.shapeRadius.medium),
        ),
        child: Center(
          child: Text(
            category.name,
            style: context.typography.bodyMedium.copyWith(
              color: isCategorySelected
                  ? context.textColors.whiteTextColor
                  : context.textColors.primaryTextColor,
            ),
          ),
        ),
      ),
    );
  }

  /// Builds the grid of movie items.
  Widget _buildMovieItemList() {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.isMoviesLoading) {
          return const MovieShimmerEffect();
        }

        return GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: context.spacingSizes.large,
          mainAxisSpacing: context.spacingSizes.xLarge,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          childAspectRatio: .62,
          children: List.generate(state.movies.length, (index) {
            return _buildMovieItem(context, state.movies[index]);
          }),
        );
      },
    );
  }

  /// Builds a single movie item card with image, title, and rating.
  Widget _buildMovieItem(BuildContext context, MovieApiEntity movie) {
    final textColor = context.textColors;
    final typography = context.typography;
    final spacingSizes = context.spacingSizes;
    final secondaryTextStyle = typography.bodySmallLight.copyWith(
      color: context.textColors.secondaryTextColor,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            // Movie poster image
            ClipRRect(
              borderRadius: BorderRadius.circular(context.shapeRadius.medium),
              child: Image.network(
                AppCoreEnv().imageBaseUrl + movie.backdropPath,
                width: double.infinity,
                height: 200.h,
                fit: BoxFit.cover,
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
          maxLines: 1,
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
            movie.originalLanguage.toUpperCase(),
          ),
          style: secondaryTextStyle,
        ),
      ],
    );
  }
}
