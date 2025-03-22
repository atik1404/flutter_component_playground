import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/ui/widgets/common_appbar.dart';
import 'package:flutter_component_playground/core/ui/widgets/scaffold_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //appBar: CommonAppbar(title: "Home Screen",),
      body: Column(
        children: [
          Center(
            child: Text("Home Screen"),
          ),
        ],
      ),
    );
  }
}
