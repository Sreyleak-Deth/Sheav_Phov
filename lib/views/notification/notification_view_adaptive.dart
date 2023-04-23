import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:seav_phov/core/theme/m3/m3_color.dart';
import 'package:seav_phov/core/theme/m3_text_theme.dart';
import 'package:seav_phov/views/notification/notification_view_model.dart';
import 'package:timeago/timeago.dart' as timeago;


class NotificationViewAdaptive extends StatelessWidget {
  const NotificationViewAdaptive(
      {
        super.key,
        required this.viewModel,
      });

  final NotificationViewModel viewModel;
  final bool read = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: (){

            },
            //if 0 then display icon list if other than zero display icon grid
            icon: const Icon(Icons.arrow_back_ios,size: 20)
          ),
        title: const Text("Notification"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: Icon(Icons.account_circle_sharp),
          )
        ],
      ),
      body:  ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index){
          return Slidable(
        endActionPane: ActionPane(motion: const BehindMotion(), extentRatio: 0.25, children: [
          SlidableAction(
            backgroundColor: read ? M3Color.of(context).tertiary : M3Color.of(context).primary,
            foregroundColor: read ? M3Color.of(context).onTertiary : M3Color.of(context).onPrimary,
            icon: Icons.message,
            label: read ? 'Unread' : 'Read',
            onPressed: (BuildContext context) {

            },
          ),
        ]),
        child: ListTile(
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
            "Follow your heart",
            maxLines: 1,
            style: TextStyle(fontWeight: !read ? FontWeight.bold : null),
          ),
          subtitle: Text(
            'Assume that every problem in your life is a lesson to make you stronger. Then you never feel like a victim anymore',
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
        ),
        );
        }
      )
    );
  }
}
