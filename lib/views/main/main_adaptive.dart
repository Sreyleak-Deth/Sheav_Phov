import 'package:flutter/material.dart';
import 'package:seav_phov/core/constants/config_constant.dart';
import 'package:seav_phov/views/main/local_widgets/adaptive_scaffold.dart';
import 'package:seav_phov/views/main/main_view_model.dart';

class MainAdaptive extends StatelessWidget {
  const MainAdaptive({
    super.key,
    required this.viewModel,
  });

  final MainViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      destinations: viewModel.tabs,
      selectedIndex: viewModel.selectedIndex,
      onDestinationSelected: viewModel.updateSelectedIndex,
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return IndexedStack(
      index: viewModel.selectedIndex,
      children: List.generate(
        viewModel.tabs.length,
        (index) {
          bool selected = index == viewModel.selectedIndex;
          Widget child = viewModel.tabs[index].builder(context);
          return buildFadeInWrapper(
            selected: selected,
            child: child,
          );
        },
      ),
    );
  }

  Widget buildFadeInWrapper({
    required bool selected,
    required Widget child,
  }) {
    return AnimatedOpacity(
      opacity: selected ? 1.0 : 0.0,
      duration: ConfigConstant.duration,
      child: AnimatedContainer(
        duration: ConfigConstant.duration,
        transform: Matrix4.identity()..translate(0.0, !selected ? 8.0 : 0.0),
        child: child,
      ),
    );
  }
}
