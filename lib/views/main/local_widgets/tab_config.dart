import 'package:flutter/material.dart';
import 'package:seav_phov/views/home/home_view.dart';
import 'package:seav_phov/views/account/account_view.dart';
import 'package:seav_phov/views/main/local_widgets/adaptive_scaffold_destination.dart';
import 'package:seav_phov/views/book/book_view.dart';
import 'package:seav_phov/views/notification/notification_view.dart';

class TabConfig {
  List<AdaptiveScaffoldDestination> tabs = [
     AdaptiveScaffoldDestination(
      label: "Home",
      activeIconData: Icons.home,
      iconData: Icons.home,
      builder: (BuildContext context) {
        return const HomeView();
      },
    ),
    AdaptiveScaffoldDestination(
      label: "My Book",
      activeIconData: Icons.menu_book,
      iconData: Icons.menu_book,
      builder: (BuildContext context) {
        return const BookView();
      },
    ),
    AdaptiveScaffoldDestination(
      label: "Account",
      activeIconData: Icons.person,
      iconData: Icons.person,
      builder: (BuildContext context) {
        return const AccountView();
      },
    ),
    AdaptiveScaffoldDestination(
      label: "Notification",
      activeIconData: Icons.notifications,
      iconData: Icons.notifications,
      builder: (BuildContext context) {
        return const NotificationView();
      },
    ),
  ];
}
