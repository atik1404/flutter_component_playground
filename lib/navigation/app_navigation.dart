import 'package:flutter/material.dart';
import 'package:flutter_component_playground/presentation/auth/login/login_screen_route.dart';
import 'package:flutter_component_playground/presentation/auth/splash/splash_screen_route.dart';
import 'package:flutter_component_playground/presentation/home/home_screen_route.dart';
import 'package:flutter_component_playground/navigation/app_route.dart';
import 'package:flutter_component_playground/navigation/base_router.dart';
import 'package:go_router/go_router.dart';

List<BaseRouter> get routers => [
      SplashScreenRoute(),
      LoginScreenRoute(),
      HomeScreenRoute(),
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
