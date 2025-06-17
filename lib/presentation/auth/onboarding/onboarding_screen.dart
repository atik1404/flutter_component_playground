import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/common/utils/logger_utils';
import 'package:flutter_component_playground/designsystem/extensions/theme_context_extension.dart';
import 'package:flutter_component_playground/domain/entities/params/onboarding_pager_entity.dart';
import 'package:flutter_component_playground/presentation/auth/onboarding/bloc/onboarding_cubit.dart';
import 'package:flutter_component_playground/presentation/auth/onboarding/bloc/onboarding_state.dart';
import 'package:flutter_component_playground/ui/widgets/app_button.dart';
import 'package:flutter_component_playground/ui/widgets/spacer_box.dart';
import 'package:flutter_component_playground/localization/localize_extension.dart';
import 'package:flutter_component_playground/navigation/app_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

/// OnboardingScreen displays a multi-page onboarding flow with page indicator and animated button.
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Enable immersive mode for a full-screen onboarding experience
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    final screenSize = MediaQuery.sizeOf(context);

    return BlocListener<OnboardingCubit, OnboardingState>(
      listener: (context, state) {
        // Listen for navigation events to next screen
        if (state.shouldNavigateToNextScreen) {
          context.goNamed(AppRoute.loginScreen);
          context
              .read<OnboardingCubit>()
              .resetState(); //reset state after navigation
        }
      },
      child: Scaffold(
        backgroundColor: context.backgroundColors.introductionBackgroundColor,
        body: Padding(
          padding: EdgeInsets.all(context.spacingSizes.base),
          child: Column(
            children: [
              // PagerView for onboarding screens
              _buildPagerView(),
              // Page indicator dots
              _buildPageIndicator(context),
              SpacerBox(height: 20.h),
              // Animated "Get Started" button
              _buildAnimatedButton(),
              SpacerBox(height: screenSize.height * 0.15),
            ],
          ),
        ),
      ),
    );
  }

  /// Builds the onboarding pager with swipeable pages
  Widget _buildPagerView() {
    return Expanded(
      child: BlocBuilder<OnboardingCubit, OnboardingState>(
        buildWhen: (prev, curr) => prev.currentPage != curr.currentPage,
        builder: (context, state) {
          return PageView.builder(
            itemCount: onboardingPagerList.length,
            controller: PageController(initialPage: state.currentPage),
            itemBuilder: (context, index) =>
                _buildPageItem(context, onboardingPagerList[index]),
            onPageChanged: (index) {
              // Notify cubit about page change
              context.read<OnboardingCubit>().onPageChanged(index);
            },
          );
        },
      ),
    );
  }

  /// Builds a single onboarding page
  Widget _buildPageItem(BuildContext context, OnboardingPagerEntity item) {
    final textColor = context.textColors;

    return Column(
      children: [
        const Spacer(),
        // Onboarding illustration/image
        Image.asset(
          item.image,
          height: 250.h,
        ),
        const Spacer(),
        Column(
          children: [
            // Title text
            Text(
              item.title,
              textAlign: TextAlign.center,
              style: context.typography.titleLargeBold.copyWith(
                color: textColor.whiteTextColor,
              ),
            ),
            SpacerBox(height: 15.h),
            // Subtitle text
            Text(
              item.subTitle,
              textAlign: TextAlign.center,
              style: context.typography.titleSmallLight.copyWith(
                color: textColor.whiteTextColor,
              ),
            ),
            SpacerBox(height: 30.h),
            // Description text
            Text(
              item.description,
              textAlign: TextAlign.center,
              style: context.typography.bodyMediumLight.copyWith(
                color: textColor.whiteTextColor,
              ),
            ),
          ],
        ),
        const Spacer(),
      ],
    );
  }

  /// Builds the animated page indicator dots
  Widget _buildPageIndicator(BuildContext context) {
    final materialColors = context.materialColors;

    return BlocBuilder<OnboardingCubit, OnboardingState>(
      buildWhen: (prev, curr) => prev.currentPage != curr.currentPage,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(onboardingPagerList.length, (index) {
            final isActive = state.currentPage == index;

            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: EdgeInsets.only(right: context.spacingSizes.base),
              width: 30.w,
              height: 3.h,
              decoration: BoxDecoration(
                color: isActive
                    ? materialColors.primary
                    : materialColors.onSecondary,
                borderRadius: BorderRadius.circular(5.r),
              ),
            );
          }),
        );
      },
    );
  }

  /// Builds the animated "Get Started" button, visible only on the last page.
  /// Uses [AnimatedOpacity] and [AnimatedContainer] for smooth appearance and slide transition.
  Widget _buildAnimatedButton() {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      buildWhen: (prev, curr) => prev.isLastPage != curr.isLastPage,
      builder: (context, state) {
        // Show button only when last page is reached
        return AnimatedOpacity(
          duration: const Duration(milliseconds: 500),
          opacity: state.isLastPage ? 1.0 : 0.0,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            transform: Matrix4.translationValues(
              0,
              state.isLastPage ? 0 : 50, // Slide up when visible
              0,
            ),
            child: AppButton(
              text: context.getString.button_get_started,
              onPressed: () {
                context.read<OnboardingCubit>().navigateToNextScreen();
              },
            ),
          ),
        );
      },
    );
  }
}
