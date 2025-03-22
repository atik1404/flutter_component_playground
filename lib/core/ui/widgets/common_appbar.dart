import 'package:flutter/material.dart';

class CommonAppbar extends StatelessWidget {
  final String title;
  const CommonAppbar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
    );
  }
}
