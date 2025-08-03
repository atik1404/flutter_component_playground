import 'package:flutter/material.dart';
import 'package:flutter_component_playground/presentation/auth/forgot_password/forgot_password_screen_route.dart';
import 'package:flutter_component_playground/presentation/auth/onboarding/onboarding_route.dart';
import 'package:flutter_component_playground/presentation/auth/login/login_screen_route.dart';
import 'package:flutter_component_playground/presentation/auth/profile/profile_screen_route.dart';
import 'package:flutter_component_playground/presentation/auth/registration/registration_route.dart';
import 'package:flutter_component_playground/presentation/auth/splash/splash_screen_route.dart';
import 'package:flutter_component_playground/presentation/favorites/favorites_screen_route.dart';
import 'package:flutter_component_playground/presentation/home/home_screen_route.dart';
import 'package:flutter_component_playground/navigation/app_route.dart';
import 'package:flutter_component_playground/navigation/base_router.dart';
import 'package:flutter_component_playground/presentation/movie_details/movie_details_route.dart';
import 'package:go_router/go_router.dart';

List<BaseRouter> get routers => [
      SplashScreenRoute(),
      OnboardingRoute(),
      LoginScreenRoute(),
      RegistrationRoute(),
      HomeScreenRoute(),
      FavoritesScreenRoute(),
      ProfileScreenRoute(),
      ForgotPasswordScreenRoute(),
      MovieDetailsRoute(),
    ];

final GoRouter router = GoRouter(
  initialLocation: AppRoute.splashScreen,
  routes: [...routers.expand((router) => router.routes)],
  errorBuilder: (context, state) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(state.error?.message ?? "Unknown screen"),
            TextButton(
              onPressed: () => context.pop(),
              child: const Text("Back"),
            ),
          ],
        ),
      ),
    );
  },
);
