import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:seav_phov/views/main/local_widgets/adaptive_scaffold_destination.dart';

class AdaptiveScaffold extends StatelessWidget {
  const AdaptiveScaffold({
    Key? key,
    required this.destinations,
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.body,
  }) : super(key: key);

  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;
  final List<AdaptiveScaffoldDestination> destinations;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return Scaffold(
            bottomNavigationBar: buildBottomNavigation(),
            body: body,
          );
        } else {
          return Scaffold(
            body: Row(
              children: [
                buildNavigationRail(extended: sizingInformation.deviceScreenType == DeviceScreenType.desktop),
                const VerticalDivider(width: 1),
                Expanded(
                  child: body,
                ),
              ],
            ),
          );
        }
      },
    );
  }

  Widget buildBottomNavigation() {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: (int index) => onDestinationSelected(index),
      destinations: destinations.map((e) {
        return NavigationDestination(
          icon: Icon(e.iconData),
          selectedIcon: Icon(e.activeIconData),
          label: e.label,
          tooltip: e.label,
        );
      }).toList(),
    );
  }

  Widget buildNavigationRail({
    required bool extended,
  }) {
    return NavigationRail(
      selectedIndex: selectedIndex,
      extended: extended,
      groupAlignment: 0,
      onDestinationSelected: (int index) => onDestinationSelected(index),
      destinations: destinations.map((e) {
        return NavigationRailDestination(
          icon: Icon(e.iconData),
          selectedIcon: Icon(e.activeIconData),
          label: Text(e.label),
        );
      }).toList(),
    );
  }

  // Flutter team still working on M3 navigation drawer.
  // Meanwhile, we custom the UI
  Widget buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: List.generate(
          destinations.length,
          (index) {
            AdaptiveScaffoldDestination destination = destinations[index];
            bool selected = index == selectedIndex;
            return ListTile(
              title: Text(destination.label),
              onTap: () => onDestinationSelected(index),
              leading: SizedBox(
                width: 44,
                height: 44,
                child: Icon(
                  selected ? destination.activeIconData : destination.iconData,
                  color: selected ? Theme.of(context).colorScheme.primary : null,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
