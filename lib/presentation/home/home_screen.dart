
import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/designsystem/extensions/theme_context_extension.dart';
import 'package:flutter_component_playground/core/designsystem/resources/app_icons.dart';
import 'package:flutter_component_playground/core/ui/widgets/scaffold_appbar.dart';
import 'package:flutter_component_playground/localization/localize_extension.dart';
import 'package:flutter_component_playground/presentation/auth/profile/profile_screen.dart';
import 'package:flutter_component_playground/presentation/favorites/favorites_screen.dart';
import 'package:flutter_component_playground/presentation/home/home_screen_content.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;
  final List<Widget> _screens = [
    const HomeScreenContent(),
    const FavoritesScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return ScaffoldAppbar(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      navigationBar: _buildNavigationBar(context),
    );
  }

  NavigationBar _buildNavigationBar(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      selectedIndex: _selectedIndex,
      destinations: [
        _buildNavigationDestination(
          context,
          AppIcons.icHome,
          context.getString.title_home,
        ),
        _buildNavigationDestination(
          context,
          AppIcons.icWishList,
          context.getString.menu_wishlist,
        ),
        _buildNavigationDestination(
          context,
          AppIcons.icProfile,
          context.getString.menu_profile,
        ),
      ],
    );
  }

  Widget _buildNavigationDestination(
    BuildContext context,
    String icon,
    String label,
  ) {
    final iconSizes = context.iconSizes;

    return NavigationDestination(
      icon: SvgPicture.asset(
        icon,
        width: iconSizes.base,
        height: iconSizes.base,
      ),
      selectedIcon: SvgPicture.asset(
        icon,
        width: iconSizes.base,
        height: iconSizes.base,
        colorFilter: ColorFilter.mode(
          context.materialColors.primary,
          BlendMode.srcIn,
        ),
      ),
      label: label,
    );
  }
}
