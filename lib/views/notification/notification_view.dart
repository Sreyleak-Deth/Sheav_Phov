import 'package:flutter/material.dart';
import 'package:seav_phov/core/base/view_model_provider.dart';
import 'package:seav_phov/views/notification/notification_view_adaptive.dart';
import 'package:seav_phov/views/notification/notification_view_model.dart';


class NotificationView extends StatelessWidget {
  const NotificationView(
      {super.key,});


  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<NotificationViewModel>(
      create: (context) => NotificationViewModel(),
      builder: (context, viewModel, child) {
        return NotificationViewAdaptive(
          viewModel: viewModel,
        );
      },
    );
  }
}
