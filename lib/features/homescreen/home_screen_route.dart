import 'package:flutter_component_playground/features/homescreen/home_screen.dart';
import 'package:flutter_component_playground/navigation/app_route.dart';
import 'package:flutter_component_playground/navigation/base_router.dart';
import 'package:go_router/go_router.dart';

final class HomeScreenRoute extends BaseRouter {
  @override
  List<GoRoute> get routes => [
        GoRoute(
          path: AppRoute.homeScreen,
          builder: (context, state) => const HomeScreen(),
        ),
      ];
}
