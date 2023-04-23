
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:seav_phov/core/theme/m3/m3_custom_color.dart';
import 'package:seav_phov/core/theme/m3/theme_constant.dart';

class M3Color {
  M3Color._();
  static final M3Color instance = M3Color._();

  static ColorScheme of(BuildContext context) => Theme.of(context).colorScheme;
  static Brightness keyboardAppearance(BuildContext context) => Theme.of(context).colorScheme.brightness;
  static bool isDarkMode(BuildContext context) => of(context).brightness == Brightness.dark;

  /// Additonal colors: success, danger, warning, info
  static M3CustomColor bootstrap(BuildContext context) {
    bool darkMode = isDarkMode(context);
    return M3CustomColor.get(darkMode);
  }

  /// Make sure to initialize() on load
  ColorScheme colorScheme(bool isDarkMode) {
    if (isDarkMode) {
      return _darkCache!;
    } else {
      return _lightCache!;
    }
  }

  ColorScheme? _darkCache;
  ColorScheme? _lightCache;

  Future<void> initialize() async {
    _darkCache = await compute(_generateDarkScheme, ThemeConstant.brandColor);
    _lightCache = await compute(_generateLightScheme, ThemeConstant.brandColor);
    // await M3CustomColor._initialize();
  }
}

ColorScheme _generateDarkScheme(Color seedColor) {
  return ColorScheme.fromSeed(
    seedColor: seedColor,
    brightness: Brightness.dark,
  );
}

ColorScheme _generateLightScheme(Color seedColor) {
  return ColorScheme.fromSeed(
    seedColor: seedColor,
    brightness: Brightness.light,
  );
}
