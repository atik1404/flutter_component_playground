import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_component_playground/core/common/utils/logger_utils';
import 'package:flutter_component_playground/core/designsystem/extensions/theme_context_extension.dart';
import 'package:flutter_component_playground/core/designsystem/resources/app_images.dart';
import 'package:flutter_component_playground/core/model/onboarding_pager_entity.dart';
import 'package:flutter_component_playground/core/ui/widgets/spacer_box.dart';
import 'package:flutter_component_playground/localization/localize_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
            if (_currentPage == onboardingPagerList.length - 1)
              _buildButton(),
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

  Widget _buildButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Fluttertoast.showToast(msg: "Button clicked");
          log.info("info log");
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Rounded corners
          ),
          padding: EdgeInsets.symmetric(
            vertical: context.spacingSizes.base,
          ),
        ),
        child: Text(
          context.getString.button_get_started,
          style: context.typography.bodyLargeRegular,
        ),
      ),
    );
  }

}
