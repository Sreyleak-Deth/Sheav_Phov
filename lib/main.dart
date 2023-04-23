
import 'package:flutter/material.dart';
import 'package:seav_phov/app.dart';
import 'package:seav_phov/provider_scope.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
