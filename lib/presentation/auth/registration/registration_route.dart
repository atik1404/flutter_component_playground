import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/core/di/module/app_di_module.dart';
import 'package:flutter_component_playground/navigation/app_route.dart';
import 'package:flutter_component_playground/navigation/base_router.dart';
import 'package:flutter_component_playground/presentation/auth/registration/bloc/registration_bloc.dart';
import 'package:flutter_component_playground/presentation/auth/registration/registration_screen.dart';
import 'package:go_router/go_router.dart';

class RegistrationRoute extends BaseRouter {
  @override
  List<GoRoute> get routes => [
        GoRoute(
          path: AppRoute.registrationScreen,
          name: AppRoute.registrationScreen,
          builder: (context, state) {
            return BlocProvider(
              create: (context) => di.get<RegistrationBloc>(),
              child: const RegistrationScreen(),
            );
          },
        ),
      ];
}
