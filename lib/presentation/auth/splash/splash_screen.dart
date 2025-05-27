import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/designsystem/extensions/theme_context_extension.dart';
import 'package:flutter_component_playground/designsystem/resources/app_images.dart';
import 'package:flutter_component_playground/ui/widgets/scaffold_appbar.dart';
import 'package:flutter_component_playground/ui/widgets/spacer_box.dart';
import 'package:flutter_component_playground/localization/localize_extension.dart';
import 'package:flutter_component_playground/navigation/app_route.dart';
import 'package:flutter_component_playground/presentation/auth/splash/block/splash_cubit.dart';
import 'package:flutter_component_playground/presentation/auth/splash/block/splash_screen_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

/// SplashScreen displays the app logo and name while the app is initializing.
/// It listens to [SplashCubit] for navigation events and loading state.
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final spaceSize = context.spacingSizes;

    // Trigger navigation logic as soon as the widget is built.
    // It's better to use addPostFrameCallback to avoid calling cubit in build.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SplashCubit>().navigateToNextScreen();
    });

    return BlocListener<SplashCubit, SplashScreenState>(
      listenWhen: (previous, current) =>
          previous.shouldNavigateToHomeScreen !=
              current.shouldNavigateToHomeScreen ||
          previous.shouldNavigateToLoginScreen !=
              current.shouldNavigateToLoginScreen ||
          previous.shouldNavigateToOnboardingScreen !=
              current.shouldNavigateToOnboardingScreen,
      listener: (context, state) {
        if (state.shouldNavigateToHomeScreen) {
          context.goNamed(AppRoute.homeScreen);
        } else if (state.shouldNavigateToLoginScreen) {
          context.goNamed(AppRoute.loginScreen);
        } else if (state.shouldNavigateToOnboardingScreen) {
          context.goNamed(AppRoute.onboardingScreen);
        }
      },
      child: ScaffoldAppbar(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLogo(context),
              SpacerBox(height: spaceSize.large),
              _buildAppName(context),
              SpacerBox(height: spaceSize.large),
              _buildLoadingIndicator(),
            ],
          ),
        ),
      ),
    );
  }

  /// Builds the app logo widget.
  Widget _buildLogo(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(context.shapeRadius.base),
      child: Image.asset(
        AppImages.appLogo,
        width: 180.w,
        height: 180.h,
        fit: BoxFit.fill,
      ),
    );
  }

  /// Builds the app name text widget.
  Widget _buildAppName(BuildContext context) {
    return Text(
      context.getString.title_app_name,
      style: context.typography.titleLargeBold.copyWith(
        color: context.textColors.primaryTextColor,
      ),
    );
  }

  /// Builds a loading indicator that shows while the splash is loading.
  Widget _buildLoadingIndicator() {
    return BlocBuilder<SplashCubit, SplashScreenState>(
      buildWhen: (previous, current) => previous.isLoading != current.isLoading,
      builder: (context, state) {
        return state.isLoading
            ? const CircularProgressIndicator()
            : const SizedBox.shrink();
      },
    );
  }
}
