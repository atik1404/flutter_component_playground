import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/designsystem/extensions/theme_context_extension.dart';
import 'package:flutter_component_playground/core/ui/widgets/common_appbar.dart';
import 'package:flutter_component_playground/core/ui/widgets/scaffold_appbar.dart';
import 'package:flutter_component_playground/localization/localize_extension.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldAppbar(
      appbar: CommonAppbar(title: context.getString.title_home),
      body: Column(
        children: [
          Center(
            child: Text(context.getString.title_home,  style: context.typography.bodyExtraSmallBold,),
          ),
        ],
      ),
    );
  }
}
