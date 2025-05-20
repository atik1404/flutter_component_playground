import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_component_playground/designsystem/extensions/theme_context_extension.dart';
import 'package:flutter_component_playground/domain/entities/params/onboarding_pager_entity.dart';
import 'package:flutter_component_playground/ui/widgets/app_button.dart';
import 'package:flutter_component_playground/ui/widgets/spacer_box.dart';
import 'package:flutter_component_playground/localization/localize_extension.dart';
import 'package:flutter_component_playground/navigation/app_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    final screenSize = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: context.backgroundColors.introductionBackgroundColor,
      body: Container(
        padding: EdgeInsets.all(context.spacingSizes.base),
        width: double.infinity,
        child: Column(
          children: [
            _buildPagerView(),
            _buildPageIndicator(context),
            SpacerBox(
              height: 20.h,
            ),
            _buildAnimatedButton(context),
            SpacerBox(
              height: screenSize.height * 0.15,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPagerView() {
    return Expanded(
      child: PageView.builder(
        itemCount: onboardingPagerList.length,
        itemBuilder: (context, index) {
          return _buildPageItem(context, onboardingPagerList[index]);
        },
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
      ),
    );
  }

  Widget _buildPageItem(BuildContext context, OnboardingPagerEntity item) {
    final textColor = context.textColors;

    return Column(
      children: [
        const Spacer(),
        Image.asset(
          item.image,
          height: 250.h,
        ),
        const Spacer(),
        Column(
          children: [
            Text(
              textAlign: TextAlign.center,
              item.title,
              style: context.typography.titleLargeBold.copyWith(
                color: textColor.whiteTextColor,
              ),
            ),
            SpacerBox(
              height: 15.h,
            ),
            Text(
              textAlign: TextAlign.center,
              item.subTitle,
              style: context.typography.titleSmallLight.copyWith(
                color: textColor.whiteTextColor,
              ),
            ),
            SpacerBox(
              height: 30.h,
            ),
            Text(
              textAlign: TextAlign.center,
              item.description,
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

  Widget _buildPageIndicator(BuildContext context) {
    final materialColors = context.materialColors;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(onboardingPagerList.length, (index) {
        final isCurrentPage = _currentPage == index;

        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: EdgeInsets.only(right: context.spacingSizes.base),
          width: 30.w,
          height: 3.h,
          decoration: BoxDecoration(
            color: isCurrentPage
                ? materialColors.primary
                : materialColors.onSecondary,
            borderRadius: BorderRadius.circular(5.r),
          ),
        );
      }),
    );
  }

  Widget _buildAnimatedButton(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 500),
      opacity: _currentPage == onboardingPagerList.length - 1 ? 1.0 : 0.0,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        transform: Matrix4.translationValues(
          0,
          _currentPage == onboardingPagerList.length - 1 ? 0 : 50,
          0,
        ),
        child: AppButton(
          text: context.getString.button_get_started,
          onPressed: () {
            context.goNamed(AppRoute.loginScreen);
          },
        ),
      ),
    );
  }
}
