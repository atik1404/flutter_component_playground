import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/core/di/module/app_di_module.dart';
import 'package:flutter_component_playground/navigation/app_route.dart';
import 'package:flutter_component_playground/navigation/base_router.dart';
import 'package:flutter_component_playground/presentation/auth/onboarding/bloc/onboarding_cubit.dart';
import 'package:flutter_component_playground/presentation/auth/onboarding/onboarding_screen.dart';
import 'package:go_router/go_router.dart';

final class OnboardingRoute extends BaseRouter {
  @override
  List<GoRoute> get routes => [
        GoRoute(
          path: AppRoute.onboardingScreen,
          name: AppRoute.onboardingScreen,
          pageBuilder: (context, state) {
            return buildAnimatedPage(
              child: BlocProvider(
                create: (context) => di.get<OnboardingCubit>(),
                child: const OnboardingScreen(),
              ),
            );
          },
        ),
      ];
}
