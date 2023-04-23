import 'package:flutter/material.dart';
import 'package:seav_phov/core/theme/m3_read_only_color.dart';

extension ColorSchemeExtension on ColorScheme {
  M3ReadOnlyColor get readOnly => M3ReadOnlyColor(this);
}
