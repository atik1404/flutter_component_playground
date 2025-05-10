import 'package:flutter_component_playground/navigation/app_route.dart';
import 'package:flutter_component_playground/navigation/base_router.dart';
import 'package:flutter_component_playground/presentation/auth/profile/profile_screen.dart';
import 'package:go_router/go_router.dart';

class ProfileScreenRoute extends BaseRouter {
  @override
  List<GoRoute> get routes => [
        GoRoute(
          path: AppRoute.profileScreen,
          name: AppRoute.profileScreen,
          pageBuilder: (context, state) {
            return buildAnimatedPage(
              child: const ProfileScreen(),
            );
          },
        ),
      ];
}
