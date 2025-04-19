import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/core/di/module/app_di_module.dart';
import 'package:flutter_component_playground/navigation/app_route.dart';
import 'package:flutter_component_playground/navigation/base_router.dart';
import 'package:flutter_component_playground/presentation/auth/splash/block/splash_cubit.dart';
import 'package:flutter_component_playground/presentation/auth/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';

final class SplashScreenRoute extends BaseRouter {
  @override
  List<GoRoute> get routes => [
        GoRoute(
          path: AppRoute.splashScreen,
          builder: (context, state) => BlocProvider(
            create: (_) => di.get<SplashCubit>(),
            child: const SplashScreen(),
          ),
        ),
      ];
}
