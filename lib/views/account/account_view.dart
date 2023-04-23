import 'package:flutter/material.dart';
import 'package:seav_phov/core/base/view_model_provider.dart';
import 'package:seav_phov/views/account/account_view_adaptive.dart';
import 'package:seav_phov/views/account/account_view_model.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<AccountViewModel>(
      create: (context) => AccountViewModel(),
      builder: (context, viewModel, child) {
        return AccountViewAdaptive(viewModel: viewModel);
      },
    );
  }
}
