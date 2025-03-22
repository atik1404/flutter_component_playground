import 'package:flutter/material.dart';

class ScaffoldAppbar extends StatelessWidget {
  final AppBar? appbar;
  final List<Widget>? actions;
  final Widget? body;
  final bool centerTitle;
  final bool isIgnoreSafeArea;

  const ScaffoldAppbar({
    super.key,
    this.appbar,
    this.actions,
    required this.body,
    this.centerTitle = true,
    this.isIgnoreSafeArea = false,
  });

  @override
  Widget build(BuildContext context) {
    final body = _buildBody();

    return Scaffold(
      appBar: appbar,
      body: isIgnoreSafeArea ? body : SafeArea(child: body),
    );
  }

  Widget _buildBody() => body ?? Container();
}
