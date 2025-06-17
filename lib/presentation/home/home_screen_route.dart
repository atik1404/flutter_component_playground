import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/core/di/module/app_di_module.dart';
import 'package:flutter_component_playground/presentation/home/bloc/home_bloc.dart';
import 'package:flutter_component_playground/presentation/home/home_screen.dart';
import 'package:flutter_component_playground/navigation/app_route.dart';
import 'package:flutter_component_playground/navigation/base_router.dart';
import 'package:go_router/go_router.dart';

final class HomeScreenRoute extends BaseRouter {
  @override
  List<GoRoute> get routes => [
        GoRoute(
          path: AppRoute.homeScreen,
          name: AppRoute.homeScreen,
          pageBuilder: (context, state) {
            return buildAnimatedPage(
              child: BlocProvider(
                create: (_) => di.get<HomeBloc>(),
                child: const HomeScreen(),
              ),
            );
          },
        ),
      ];
}
