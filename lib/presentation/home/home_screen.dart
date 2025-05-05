import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/designsystem/extensions/theme_context_extension.dart';
import 'package:flutter_component_playground/core/designsystem/resources/app_icons.dart';
import 'package:flutter_component_playground/core/designsystem/resources/app_images.dart';
import 'package:flutter_component_playground/core/ui/widgets/app_text_field.dart';
import 'package:flutter_component_playground/core/ui/widgets/scaffold_appbar.dart';
import 'package:flutter_component_playground/core/ui/widgets/spacer_box.dart';
import 'package:flutter_component_playground/localization/localize_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _sliderIndex = 0;
  int _selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    final spacingSizes = context.spacingSizes;

    return ScaffoldAppbar(
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all(context.spacingSizes.base),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildToolbar(context),
              SizedBox(height: spacingSizes.large),
              _buildSlider(),
              SizedBox(height: spacingSizes.large),
              _buildMovieCategory(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildToolbar(BuildContext context) {
    final spacingSizes = context.spacingSizes;
    final iconSizes = context.iconSizes;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ClipOval(
              child: Image.network(
                AppImages.imgAvatar,
                width: 50.w,
                height: 50.h,
                fit: BoxFit.fill,
              ),
            ),
            SpacerBox(
              width: context.spacingSizes.base,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, User",
                  style: context.typography.titleSmallBold
                      .copyWith(color: context.textColors.primaryTextColor),
                ),
                SizedBox(height: context.spacingSizes.xSmall),
                Text(
                  "Welcome back to your dashboard",
                  style: context.typography.bodySmallLight
                      .copyWith(color: context.textColors.secondaryTextColor),
                ),
              ],
            ),
            const Spacer(),
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
        SizedBox(height: spacingSizes.large),
        AppTextField(
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
              width: iconSizes.medium, // Changed from 1.w
              height: iconSizes.medium, // Changed from 1.h
              colorFilter: ColorFilter.mode(
                context.materialColors.onSurface,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSlider() {
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
              log("Current index: $index, reason: $reason");
            },
          ),
        ),
        SizedBox(height: context.spacingSizes.base),
        _buildPageIndicator(context),
      ],
    );
  }

  Widget _buildPageIndicator(BuildContext context) {
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
            itemBuilder: (context, index) {d
              return _buildCategoryItem(index);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryItem(int index) {
    return GestureDetector(
      onTap: () {
        Fluttertoast.showToast(msg: "Category $index clicked");
        setState(() {
          _selectedCategory = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(
          right: context.spacingSizes.medium,
        ),
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
}
