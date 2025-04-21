import 'package:flutter_component_playground/navigation/app_route.dart';
import 'package:flutter_component_playground/navigation/base_router.dart';
import 'package:flutter_component_playground/presentation/auth/onboarding/onboarding_screen.dart';
import 'package:go_router/go_router.dart';

final class OnboardingRoute extends BaseRouter {
  @override
  List<GoRoute> get routes => [
        GoRoute(
          path: AppRoute.onboardingScreen,
          name: AppRoute.onboardingScreen,
          builder: (context, state) => const OnboardingScreen(),
        ),
      ];
}
