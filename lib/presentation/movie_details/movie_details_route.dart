import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/core/di/module/app_di_module.dart';
import 'package:flutter_component_playground/presentation/home/bloc/home_bloc.dart';
import 'package:flutter_component_playground/navigation/app_route.dart';
import 'package:flutter_component_playground/navigation/base_router.dart';
import 'package:flutter_component_playground/presentation/movie_details/movie_details_screen.dart';
import 'package:go_router/go_router.dart';

final class MovieDetailsRoute extends BaseRouter {
  @override
  List<GoRoute> get routes => [
        GoRoute(
          path: AppRoute.movieDetailsScreen,
          name: AppRoute.movieDetailsScreen,
          builder: (context, state) {
            return BlocProvider(
                create: (_) => di.get<HomeBloc>(),
                child: MovieDetailsScreen(movieId: state.extra! as int),
              );
          },
        ),
      ];
}
