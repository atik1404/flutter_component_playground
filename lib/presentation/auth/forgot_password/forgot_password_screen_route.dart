import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/core/di/module/app_di_module.dart';
import 'package:flutter_component_playground/navigation/app_route.dart';
import 'package:flutter_component_playground/navigation/base_router.dart';
import 'package:flutter_component_playground/presentation/auth/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:flutter_component_playground/presentation/auth/forgot_password/forgot_password_screen.dart';
import 'package:go_router/go_router.dart';

final class ForgotPasswordScreenRoute extends BaseRouter {
  @override
  List<GoRoute> get routes => [
        GoRoute(
          path: AppRoute.forgotPasswordScreen,
          name: AppRoute.forgotPasswordScreen,
          builder: (context, state) {
            return BlocProvider(
              create: (context) => di.get<ForgotPasswordBloc>(),
              child: ForgotPasswordScreen(),
            );
          },
        ),
      ];
}
