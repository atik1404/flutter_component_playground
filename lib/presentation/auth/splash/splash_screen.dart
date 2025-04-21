import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/core/designsystem/extensions/theme_context_extension.dart';
import 'package:flutter_component_playground/core/designsystem/resources/app_images.dart';
import 'package:flutter_component_playground/core/ui/widgets/scaffold_appbar.dart';
import 'package:flutter_component_playground/core/ui/widgets/spacer_box.dart';
import 'package:flutter_component_playground/localization/localize_extension.dart';
import 'package:flutter_component_playground/navigation/app_route.dart';
import 'package:flutter_component_playground/presentation/auth/splash/block/splash_cubit.dart';
import 'package:flutter_component_playground/presentation/auth/splash/block/splash_screen_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

// A splash screen that displays the app logo and name.
// This screen is typically shown while the app is initializing.
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final spaceSize = context.spacingSizes;

    context.read<SplashCubit>().navigateToLoginScreen();

    return BlocListener<SplashCubit, SplashScreenState>(
      listener: (context, state) {
        if (state.shouldNavigateToNextScreen) {
          context
              .goNamed(AppRoute.onboardingScreen); //navigate to login screen
          Fluttertoast.showToast(
            msg: "Go to introduction screen",
            toastLength: Toast.LENGTH_SHORT,
          );
        }
      },
      child: ScaffoldAppbar(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // App logo displayed inside a rounded rectangle.
              ClipRRect(
                borderRadius: BorderRadius.circular(context.shapeRadius.base),
                child: Image.asset(
                  AppImages.appLogo,
                  width: 180.w,
                  height: 180.h,
                  fit: BoxFit.fill,
                ),
              ),

              // Adds vertical spacing between the logo and the app title.
              SpacerBox(height: spaceSize.large),

              // App name styled using the theme's large bold text style.
              Text(
                context.getString.title_app_name,
                style: context.typography.titleLargeBold.copyWith(
                  color: context.textColors.primaryTextColor,
                ),
              ),
              SpacerBox(height: spaceSize.large),

              BlocBuilder<SplashCubit, SplashScreenState>(
                builder: (context, state) {
                  return state.isLoading
                      ? const CircularProgressIndicator()
                      : const SizedBox.shrink();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
