import 'package:flutter/material.dart';
import 'package:flutter_component_playground/presentation/home/home_screen_route.dart';
import 'package:flutter_component_playground/navigation/app_route.dart';
import 'package:flutter_component_playground/navigation/base_router.dart';
import 'package:go_router/go_router.dart';

List<BaseRouter> get routers => [
      HomeScreenRoute(),
    ];

final GoRouter router = GoRouter(
  initialLocation: AppRoute.homeScreen,
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
