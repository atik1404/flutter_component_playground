import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/core/di/module/app_di_module.dart';
import 'package:flutter_component_playground/navigation/app_route.dart';
import 'package:flutter_component_playground/navigation/base_router.dart';
import 'package:flutter_component_playground/presentation/auth/login/bloc/login_bloc.dart';
import 'package:flutter_component_playground/presentation/auth/login/login_screen.dart';
import 'package:go_router/go_router.dart';

final class LoginScreenRoute extends BaseRouter {
  @override
  List<GoRoute> get routes => [
        GoRoute(
          path: AppRoute.loginScreen,
          name: AppRoute.loginScreen,
          builder: (context, state) {
            return BlocProvider(
              create: (_) => di.get<LoginBloc>(),
              child: const LoginScreen(),
            );
          },
        ),
      ];
}
