

import 'package:flutter/cupertino.dart';
import 'package:seav_phov/core/base/view_model_provider.dart';
import 'package:seav_phov/views/home/kid_book/kid_view_adaptive.dart';
import 'package:seav_phov/views/home/kid_book/kid_view_model.dart';

class KidView extends StatelessWidget {
  const KidView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<KidViewModel>(
      create: (context) => KidViewModel(),
      builder: (context, viewModel, child) {
        return KidViewAdaptive(viewModel: viewModel);
      },
    );
  }
}
