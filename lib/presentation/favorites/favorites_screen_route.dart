import 'package:flutter_component_playground/navigation/app_route.dart';
import 'package:flutter_component_playground/navigation/base_router.dart';
import 'package:flutter_component_playground/presentation/favorites/favorites_screen.dart';
import 'package:go_router/go_router.dart';

class FavoritesScreenRoute extends BaseRouter {
  @override
  List<GoRoute> get routes => [
        GoRoute(
          path: AppRoute.favoriteScreen,
          name: AppRoute.favoriteScreen,
          builder: (context, state) {
            return const FavoritesScreen();
          },
        ),
      ];
}
