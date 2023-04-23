import 'package:flutter/material.dart';
import 'package:seav_phov/core/theme/m3_text_theme.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotificationData extends StatelessWidget{
  String title;
  String subtitle;
  IconData icon;


  NotificationData({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
  }) : super(key: key);

  final bool read = true;

  @override
  Widget build(BuildContext context) {
    return ListTile(
          contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          onTap: () {
          },
          leading: const CircleAvatar(
            child: Icon(
              Icons.notifications,
              size: 24,
            ),
          ),
          title: Text(
            title,
            maxLines: 1,
            style: TextStyle(fontWeight: !read ? FontWeight.bold : null),
          ),
          subtitle: Text(
            subtitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: !read ? FontWeight.bold : null),
          ),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                timeago.format(DateTime.now()),
                style: M3TextTheme.of(context).labelMedium?.copyWith(fontWeight: !read ? FontWeight.bold : null),
              ),
            ],
          ),
        );
  }


}
