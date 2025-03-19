import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/designsystem/dimensions/dimension_aggregator.dart';
import 'package:flutter_component_playground/core/designsystem/theme/colors/app_colors_aggregator.dart';
import 'package:flutter_component_playground/core/designsystem/typo/app_typography.dart';

final class AppDarkTheme {
  static ThemeData themeData() {
    final materialTokens = AppColorsAggregator.darkThemeColor.materialColor;
    final appBarTokens = AppColorsAggregator.darkThemeColor.appBarColor;

    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        /**
            - The primary color is the main color used for a brand or app. It’s typically the most visible color in your app's theme.
            - It's used for prominent components such as:
                - App bar background.
                - Buttons (default Material buttons like FilledButton).
                - Active elements like selected tabs.
                - Floating action buttons.
         **/
        primary: materialTokens.primary,
        onPrimary: materialTokens.onPrimary,
        /**
            - The primaryContainer color is a tonal/light variant of the primary color, typically used for elements that need a less prominent or less intense version of the primary color.
            - It is often used for containers, such as backgrounds for fab, list items, or elevated surfaces where the primary tone is desired but with lower intensity.
         **/
        primaryContainer: materialTokens.primaryContainer,
        onPrimaryContainer: materialTokens.onPrimaryContainer,

        /**
            - Less prominent fills, text, and icons against surface, Think of it as a supporting color.
            - it's a color used to highlight or draw attention to smaller parts of your app.
            - If your primary color is blue (used for buttons, app bars, etc.), the secondary color might be green, used for chips, switches, or small buttons.
         **/
        secondary: materialTokens.secondary,
        onSecondary: materialTokens.onSecondary,

        /// The secondaryContainer color is a tonal/light variant of the secondary color
        secondaryContainer: materialTokens.secondaryContainer,
        onSecondaryContainer: materialTokens.onSecondaryContainer,
        /**
            - The tertiary color is like a third accent color in your app.
            - If you already have two main colors (primary and secondary), the tertiary color adds a new visual tone for extra features or less important areas.
         **/
        tertiary: materialTokens.tertiary,
        onTertiary: materialTokens.onTertiary,
        /**
            - The error color is used to represent error states in your app.
            - It is typically a red color, as red universally signifies errors or warnings.
            - It’s used for: Error messages, invalid input fields, Warnings about actions like deleting or discarding data.
         **/
        error: materialTokens.error,
        onError: materialTokens.onError,
        /**
            - The surface color is used for the background of UI elements that sit on top of the main app background.
            - It's designed to be neutral and complementary to the background color.
            - Examples: Cards, Dialog, BottomSheet
         **/
        surface: materialTokens.surface,
        onSurface: materialTokens.onSurface,
        /**
            - Normal Surface: A card background is white, with black text.
            - Inverse Surface: A tooltip appears with a dark gray background, and the text is white. or a snackbar
         **/
        inverseSurface: materialTokens.inverseSurface,
        onInverseSurface: materialTokens.onInverseSurface,

        /**
            - surfaceContainer is a variant of the surface color used for layered elements.
            - For example you have a surface color of white with list of items. In this screen have bottom tab bar so bottom tab bar color will be more darker than white color.
         **/
        //surfaceContainer: ,
      ),
      fontFamily: "Poppins",
      extensions: [
        AppColorsAggregator.darkThemeColor,
        DimensionAggregator.instance,
        AppTypography.instance,
      ],

      //default appbar theme
      appBarTheme: AppBarTheme(
        backgroundColor: appBarTokens.primaryContainer,
        foregroundColor: appBarTokens.onPrimaryContainer,
        titleTextStyle: AppTypography.instance.titleLargeBold,
      ),
    );
  }
}
