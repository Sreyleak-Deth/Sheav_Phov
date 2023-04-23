

import 'package:flutter/cupertino.dart';
import 'package:seav_phov/core/base/view_model_provider.dart';
import 'package:seav_phov/views/home/home_adaptive.dart';
import 'package:seav_phov/views/home/home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<HomeViewModel>(
      create: (context) => HomeViewModel(),
      builder: (context, viewModel, child) {
        return HomeAdaptive(viewModel: viewModel);
      },
    );
  }
}
