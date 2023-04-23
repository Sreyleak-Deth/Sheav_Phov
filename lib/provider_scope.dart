import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seav_phov/providers/theme_provider.dart';

class ProviderScope extends StatelessWidget {
  const ProviderScope({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ListenableProvider<ThemeProvider>(
          create: (context) => ThemeProvider(),
        ),
      ],
      child: child,
    );
  }
}
