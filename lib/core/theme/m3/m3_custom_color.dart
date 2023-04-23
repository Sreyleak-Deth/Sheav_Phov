
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Scheme {
  final Color color;
  final Color onColor;
  final Color container;
  final Color onContainer;

  Scheme(
    this.color,
    this.onColor,
    this.container,
    this.onContainer,
  );
}

/// Base on bootstrap:
/// https://getbootstrap.com/docs/4.0/utilities/colors
class M3CustomColor {
  final Scheme success;
  final Scheme danger;
  final Scheme warning;
  final Scheme info;

  const M3CustomColor._({
    required this.success,
    required this.danger,
    required this.warning,
    required this.info,
  });

  /// make sure to call initialize() before views
  static M3CustomColor get(bool isDarkMode) => isDarkMode ? inDark : inLight;

  static M3CustomColor get inDark => _inDark!;
  static M3CustomColor get inLight => _inLight!;

  static M3CustomColor? _inDark;
  static M3CustomColor? _inLight;

  static Future<void> initialize() async {
    Map<Brightness, M3CustomColor> schemes = await compute(_getSchemes, {});
    _inLight = schemes[Brightness.light];
    _inDark = schemes[Brightness.dark];
  }
}

// save compute executions times
Map<Brightness, M3CustomColor> _getSchemes(Map args) {
  Color success = const Color(0xFF28a745);
  Color danger = const Color(0xFFdc3545);
  Color warning = const Color(0xFFffc107);
  Color info = const Color(0xFF17a2b8);

  M3CustomColor get(Brightness brightness) {
    return M3CustomColor._(
      success: _schemeFrom(success, brightness),
      danger: _schemeFrom(danger, brightness),
      warning: _schemeFrom(warning, brightness),
      info: _schemeFrom(info, brightness),
    );
  }

  return {
    Brightness.dark: get(Brightness.dark),
    Brightness.light: get(Brightness.light),
  };
}

Scheme _schemeFrom(Color color, Brightness brightness) {
  ColorScheme scheme = ColorScheme.fromSeed(seedColor: color, brightness: brightness);
  return Scheme(
    scheme.primary,
    scheme.onPrimary,
    scheme.primaryContainer,
    scheme.onPrimaryContainer,
  );
}
