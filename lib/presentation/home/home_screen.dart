import 'package:flutter/material.dart';
import 'package:flutter_component_playground/designsystem/extensions/theme_context_extension.dart';
import 'package:flutter_component_playground/designsystem/resources/app_icons.dart';
import 'package:flutter_component_playground/ui/widgets/scaffold_appbar.dart';
import 'package:flutter_component_playground/localization/localize_extension.dart';
import 'package:flutter_component_playground/presentation/auth/profile/profile_screen.dart';
import 'package:flutter_component_playground/presentation/favorites/favorites_screen.dart';
import 'package:flutter_component_playground/presentation/home/home_screen_content.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// HomeScreen is the main entry point after login, providing navigation
/// between Home, Favorites, and Profile screens using a bottom navigation bar.
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // List of screens for each tab in the navigation bar.
  final List<Widget> _screens =  [
    const HomeScreenContent(),
    const FavoritesScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return ScaffoldAppbar(
      // IndexedStack preserves the state of each tab.
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      navigationBar: _buildNavigationBar(context),
    );
  }

  /// Builds the bottom navigation bar with destinations for each main section.
  NavigationBar _buildNavigationBar(BuildContext context) {
    return NavigationBar(
      selectedIndex: _selectedIndex,
      onDestinationSelected: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
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

  /// Builds a navigation destination with SVG icon and label.
  Widget _buildNavigationDestination(
    BuildContext context,
    String icon,
    String label,
  ) {
    final iconSizes = context.iconSizes;
    final primaryColor = context.materialColors.primary;

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
        colorFilter: ColorFilter.mode(primaryColor, BlendMode.srcIn),
      ),
      label: label,
    );
  }
}
