import 'package:flutter/material.dart';
import 'package:seav_phov/core/constants/config_constant.dart';
import 'package:seav_phov/core/theme/color_scheme_extension.dart';


class ThemeConfig {
  ThemeConfig._();
  static final ThemeConfig config = ThemeConfig._();

  bool isApple(TargetPlatform platform) {
    switch (platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return false;
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return true;
    }
  }

  ThemeData lightTheme(BuildContext context) {
    return withConfiguration(ThemeData.from(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blue,
        brightness: Brightness.light,
      ),
    ));
  }

  ThemeData darkTheme(BuildContext context) {
    return withConfiguration(ThemeData.from(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blueAccent,
        brightness: Brightness.dark,
      ),
    ));
  }

  ThemeData withConfiguration(ThemeData themeData) {
    return themeData.copyWith(
      splashFactory: isApple(themeData.platform)
          ? NoSplash.splashFactory
          : InkSparkle.splashFactory,
      tabBarTheme: TabBarTheme(
        labelColor: themeData.colorScheme.onSurface,
        indicator: UnderlineTabIndicator(
          borderSide:
              BorderSide(width: 2, color: themeData.colorScheme.primary),
        ),
      ),
      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(
          borderRadius: ConfigConstant.circlarRadius2,
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: themeData.colorScheme.readOnly.surface2,
        centerTitle: false,
        elevation: 0.0,
        foregroundColor: themeData.colorScheme.onSurface,
      ),
      textTheme: themeData.textTheme.apply(
        fontFamily: "Roboto",
      ),
    );
  }

  // For documentation, we use default M3 typographt as following:
  //
  // static const TextTheme textTheme = TextTheme(
  //     displayLarge: TextStyle(
  //     fontSize: 57.0,
  //     fontWeight: FontWeight.w400,
  //     letterSpacing: -0.25,
  //     height: 1.12,
  //   )
  // );
  //   displayMedium: TextStyle(
  //     fontSize: 45.0,
  //     fontWeight: FontWeight.w400,
  //     letterSpacing: 0.0,
  //     height: 1.16,
  //   ),
  //   displaySmall: TextStyle(
  //     fontSize: 36.0,
  //     fontWeight: FontWeight.w400,
  //     letterSpacing: 0.0,
  //     height: 1.22,
  //   ),
  //   headlineLarge: TextStyle(
  //     fontSize: 32.0,
  //     fontWeight: FontWeight.w400,
  //     letterSpacing: 0.0,
  //     height: 1.25,
  //   ),
  //   headlineMedium: TextStyle(
  //     fontSize: 28.0,
  //     fontWeight: FontWeight.w400,
  //     letterSpacing: 0.0,
  //     height: 1.29,
  //   ),
  //   headlineSmall: TextStyle(
  //     fontSize: 24.0,
  //     fontWeight: FontWeight.w400,
  //     letterSpacing: 0.0,
  //     height: 1.33,
  //   ),
  //   titleLarge: TextStyle(
  //     fontSize: 22.0,
  //     fontWeight: FontWeight.w400,
  //     letterSpacing: 0.0,
  //     height: 1.27,
  //   ),
  //   titleMedium: TextStyle(
  //     fontSize: 16.0,
  //     fontWeight: FontWeight.w500,
  //     letterSpacing: 0.15,
  //     height: 1.50,
  //   ),
  //   titleSmall: TextStyle(
  //     fontSize: 14.0,
  //     fontWeight: FontWeight.w500,
  //     letterSpacing: 0.1,
  //     height: 1.43,
  //   ),
  //   labelLarge: TextStyle(
  //     fontSize: 14.0,
  //     fontWeight: FontWeight.w500,
  //     letterSpacing: 0.1,
  //     height: 1.43,
  //   ),
  //   labelMedium: TextStyle(
  //     fontSize: 12.0,
  //     fontWeight: FontWeight.w500,
  //     letterSpacing: 0.5,
  //     height: 1.33,
  //   ),
  //   labelSmall: TextStyle(
  //     fontSize: 11.0,
  //     fontWeight: FontWeight.w500,
  //     letterSpacing: 0.5,
  //     height: 1.45,
  //   ),
  //   bodyLarge: TextStyle(
  //     fontSize: 16.0,
  //     fontWeight: FontWeight.w400,
  //     letterSpacing: 0.5,
  //     height: 1.50,
  //   ),
  //   bodyMedium: TextStyle(
  //     fontSize: 14.0,
  //     fontWeight: FontWeight.w400,
  //     letterSpacing: 0.25,
  //     height: 1.43,
  //   ),
  //   bodySmall: TextStyle(
  //     fontSize: 12.0,
  //     fontWeight: FontWeight.w400,
  //     letterSpacing: 0.4,
  //     height: 1.33,
  //   ),
  // );
}
