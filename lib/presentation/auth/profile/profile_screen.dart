import 'package:flutter/material.dart';
import 'package:flutter_component_playground/ui/widgets/scaffold_appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldAppbar(
      body: Center(
        child: Text('Profile Screen'),
      ),
    );
  }
}
