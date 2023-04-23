import 'package:flutter/material.dart';
import 'package:seav_phov/core/base/view_model_provider.dart';
import 'package:seav_phov/views/main/main_adaptive.dart';
import 'package:seav_phov/views/main/main_view_model.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<MainViewModel>(
      create: (context) => MainViewModel(),
      builder: (context, viewModel, child) {
        return MainAdaptive(viewModel: viewModel);
      },
    );
  }
}
