import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/designsystem/extensions/theme_context_extension.dart';
import 'package:flutter_component_playground/core/designsystem/resources/app_images.dart';
import 'package:flutter_component_playground/core/ui/widgets/app_text_field.dart';
import 'package:flutter_component_playground/core/ui/widgets/scaffold_appbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldAppbar(
      body: Column(
        children: [
          _buildToolbar(context),
        ],
      ),
    );
  }

  Widget _buildToolbar(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipOval(
          child: Image.asset(
            AppImages.appLogo,
            width: 50.w,
            height: 50.h,
            fit: BoxFit.fill,
          ),
        ),
       
        SizedBox(height: context.spacingSizes.base),

        AppTextField(
          hintText: "Search here",
          keyboardType: TextInputType.webSearch,
          textInputAction: TextInputAction.search,
          prefixIcon: Icon(
            Icons.search,
            color: context.materialColors.onSurface,
          ),
          suffixIcon: Icon(
                  Icons.last_page,
                  color: context.materialColors.onSurface,
                ) ,
        ),
      ],
    );
  }
}
