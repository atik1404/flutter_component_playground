import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_component_playground/core/di/module/app_di_module.dart';
import 'package:flutter_component_playground/core/sharedpref/shared_pref_key.dart';
import 'package:flutter_component_playground/core/sharedpref/shared_prefs.dart';
import 'package:flutter_component_playground/designsystem/extensions/theme_context_extension.dart';
import 'package:flutter_component_playground/designsystem/resources/app_icons.dart';
import 'package:flutter_component_playground/designsystem/resources/app_images.dart';
import 'package:flutter_component_playground/ui/widgets/app_text_field.dart';
import 'package:flutter_component_playground/ui/widgets/scaffold_appbar.dart';
import 'package:flutter_component_playground/ui/widgets/spacer_box.dart';
import 'package:flutter_component_playground/localization/localize_extension.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

/// HomeScreenContent displays the main dashboard content for the home tab,
/// including a toolbar, slider, categories, and a grid of movie items.
class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({super.key});

  @override
  State<HomeScreenContent> createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {
  int _sliderIndex = 0;
  int _selectedCategory = 0;
  final SharedPrefs _sharedPrefs = di.get<SharedPrefs>();

  @override
  Widget build(BuildContext context) {
    final spacingSizes = context.spacingSizes;

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
                _buildSearchBar(),
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
                      _sharedPrefs.getString(key: SharedPrefKey.fullName),),
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

  Widget _buildSearchBar() {
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
    return Column(
      children: [
        CarouselSlider(
          items: [1, 2, 3].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(context.shapeRadius.base),
                    image: const DecorationImage(
                      image: NetworkImage(AppImages.movieBanner),
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
              setState(() {
                _sliderIndex = index;
              });
            },
          ),
        ),
        SizedBox(height: context.spacingSizes.base),
        _buildSliderPageIndicator(context),
      ],
    );
  }

  /// Builds the slider page indicator.
  Widget _buildSliderPageIndicator(BuildContext context) {
    final materialColors = context.materialColors;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        final isCurrentPage = _sliderIndex == index;

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
            itemCount: 5,
            itemBuilder: (context, index) {
              return _buildMovieCategoryItem(index);
            },
          ),
        ),
      ],
    );
  }

  /// Builds a single category item with selection highlight.
  Widget _buildMovieCategoryItem(int index) {
    return GestureDetector(
      onTap: () {
        Fluttertoast.showToast(msg: "Category $index clicked");
        setState(() {
          _selectedCategory = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: context.spacingSizes.medium),
        padding: EdgeInsets.symmetric(
          horizontal: context.spacingSizes.large,
          vertical: context.spacingSizes.xSmall,
        ),
        decoration: BoxDecoration(
          color: _selectedCategory == index
              ? context.buttonColors.primary
              : context.backgroundColors.primaryBackgroundColor,
          borderRadius: BorderRadius.circular(context.shapeRadius.medium),
        ),
        child: Center(
          child: Text(
            "Category $index",
            style: context.typography.bodyMedium.copyWith(
              color: _selectedCategory == index
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
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: context.spacingSizes.large,
      mainAxisSpacing: context.spacingSizes.xLarge,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      childAspectRatio: .62,
      children: List.generate(50, (index) {
        return _buildMovieItem(context);
      }),
    );
  }

  /// Builds a single movie item card with image, title, and rating.
  Widget _buildMovieItem(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            // Movie poster image
            ClipRRect(
              borderRadius: BorderRadius.circular(context.shapeRadius.medium),
              child: Image.network(
                AppImages.moviePoster,
                width: double.infinity,
                height: 200.h,
                fit: BoxFit.cover,
              ),
            ),
            // Favorite icon overlay
            Positioned(
              top: 8.h,
              right: 8.w,
              child: Container(
                padding: EdgeInsets.all(context.spacingSizes.xSmall),
                decoration: BoxDecoration(
                  color: context.buttonColors.onPrimary.withAlpha(30),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.favorite_border,
                  size: 20.w,
                  color: Colors.pink.shade200,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: context.spacingSizes.medium),
        // Movie title
        Text(
          textAlign: TextAlign.center,
          "Movie Title",
          style: context.typography.bodyLargeBold.copyWith(
            color: context.textColors.primaryTextColor,
          ),
        ),
        SizedBox(height: context.spacingSizes.xSmall),
        // Movie rating bar
        RatingBarIndicator(
          rating: 5,
          itemBuilder: (context, index) => Icon(
            Icons.star,
            color: context.materialColors.primary,
          ),
          itemSize: 16,
        ),
      ],
    );
  }
}
