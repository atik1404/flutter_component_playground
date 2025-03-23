import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/designsystem/extensions/theme_context_extension.dart';
import 'package:flutter_component_playground/core/ui/widgets/common_appbar.dart';
import 'package:flutter_component_playground/core/ui/widgets/scaffold_appbar.dart';
import 'package:flutter_component_playground/localization/localize_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldAppbar(
      appbar: CommonAppbar(title: context.getString.title_home),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: _buildComponentItem(context, "Button"),
              ),
              Expanded(
                child: _buildComponentItem(context, "Text Field"),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildComponentItem(BuildContext context, String componentName){
    return Container(
      height: 100.h,
      padding: EdgeInsets.all(context.spacingSizes.small),
      child: Card(
        child: Center(
          child: Text(componentName, style: context.typography.bodyMediumLight,),
        ),
      ),
    );
  }
}
