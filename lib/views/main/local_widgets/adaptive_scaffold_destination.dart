import 'package:flutter/material.dart';

class AdaptiveScaffoldDestination {
  final String label;
  final IconData activeIconData;
  final IconData iconData;
  final Widget Function(BuildContext context) builder;

  AdaptiveScaffoldDestination({
    required this.label,
    required this.activeIconData,
    required this.iconData,
    required this.builder,
  });
}
