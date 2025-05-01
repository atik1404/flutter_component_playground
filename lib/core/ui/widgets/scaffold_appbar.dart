import 'package:flutter/material.dart';

class ScaffoldAppbar extends StatelessWidget {
  final PreferredSizeWidget? appbar;
  final List<Widget>? actions;
  final Widget? body;
  final bool centerTitle;
  final bool isIgnoreSafeArea;
  final bool reisizeToAvoidBottomInset;

  const ScaffoldAppbar({
    super.key,
    this.appbar,
    this.actions,
    required this.body,
    this.centerTitle = true,
    this.isIgnoreSafeArea = false,
    this.reisizeToAvoidBottomInset = false,
  });

  @override
  Widget build(BuildContext context) {
    final body = _buildBody();

    return Scaffold(
      appBar: appbar,
      resizeToAvoidBottomInset: reisizeToAvoidBottomInset,
      body: isIgnoreSafeArea ? body : SafeArea(child: body),
    );
  }

  Widget _buildBody() => body ?? Container();
}
