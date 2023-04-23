
import 'package:flutter/material.dart';
import 'package:seav_phov/core/base/view_model_provider.dart';
import 'package:seav_phov/views/login/login_view_adaptive.dart';
import 'package:seav_phov/views/login/login_view_model.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<LoginViewModel>(
      create: (context) => LoginViewModel(),
      builder: (context, viewModel, child) {
        return LoginViewAdaptive(viewModel: viewModel);
      },
    );
  }
}
