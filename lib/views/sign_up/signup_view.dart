
import 'package:flutter/material.dart';
import 'package:seav_phov/core/base/view_model_provider.dart';
import 'package:seav_phov/views/sign_up/signup_view_adaptive.dart';
import 'package:seav_phov/views/sign_up/signup_view_model.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<SignupViewModel>(
      create: (context) => SignupViewModel(),
      builder: (context, viewModel, child) {
        return SignupViewAdaptive(viewModel: viewModel);
      },
    );
  }
}
