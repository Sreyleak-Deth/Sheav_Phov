import 'package:seav_phov/core/base/base_view_model.dart';
import 'package:seav_phov/views/main/local_widgets/adaptive_scaffold_destination.dart';
import 'package:seav_phov/views/main/local_widgets/tab_config.dart';

class MainViewModel extends BaseViewModel {
  late final List<AdaptiveScaffoldDestination> tabs;
  late int selectedIndex;

  MainViewModel() {
    tabs = TabConfig().tabs;
    selectedIndex = 0;
  }

  void updateSelectedIndex(int index) {
    if (index == selectedIndex) return;

    selectedIndex = index;
    notifyListeners();
  }
}
