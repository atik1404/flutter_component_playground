import 'package:flutter/material.dart';
import 'package:flutter_component_playground/designsystem/extensions/theme_context_extension.dart';

class CommonAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool isBackButtonVisible;
  final VoidCallback? onClickBackButton;

  const CommonAppbar(
      {super.key,
      required this.title,
      this.isBackButtonVisible = true,
      this.onClickBackButton,});

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: context.typography.titleMediumSemiBold,
      ),
      backgroundColor: context.appBarColors.primaryContainer,
      centerTitle: true,
      foregroundColor: context.appBarColors.onPrimaryContainer,
      leading: isBackButtonVisible
          ? IconButton(
              onPressed: onClickBackButton,
              icon: const Icon(Icons.arrow_back_ios_new_sharp),)
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
