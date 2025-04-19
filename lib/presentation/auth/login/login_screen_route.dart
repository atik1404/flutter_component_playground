import 'package:flutter_component_playground/navigation/app_route.dart';
import 'package:flutter_component_playground/navigation/base_router.dart';
import 'package:flutter_component_playground/presentation/auth/login/login_screen.dart';
import 'package:go_router/go_router.dart';

final class LoginScreenRoute extends BaseRouter {
  @override
  List<GoRoute> get routes => [
        GoRoute(
          path: AppRoute.loginScreen,
          name: AppRoute.loginScreen,
          builder: (context, state) => const LoginScreen(),
        ),
      ];
}
