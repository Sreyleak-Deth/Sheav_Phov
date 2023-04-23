

import 'package:flutter/cupertino.dart';
import 'package:seav_phov/core/base/view_model_provider.dart';
import 'package:seav_phov/views/home/adult_book.dart/adult_view_adaptive.dart';
import 'package:seav_phov/views/home/adult_book.dart/adult_view_model.dart';


class AdultView extends StatelessWidget {
  const AdultView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<AdultViewModel>(
      create: (context) => AdultViewModel(),
      builder: (context, viewModel, child) {
        return AdultViewAdaptive(viewModel: viewModel);
      },
    );
  }
}
