
import 'package:flutter/material.dart';
import 'package:seav_phov/core/theme/m3/m3_color.dart';

class AccountTile extends StatelessWidget {
  const AccountTile({
    Key? key,
    required this.title,
    required this.leadingIconData,
    required this.onTap,
    this.danger = false,
    this.navigateAction = true,
  }) : super(key: key);

  final String title;
  final IconData leadingIconData;
  final void Function()? onTap;
  final bool danger;
  final bool navigateAction;

  Widget wrapTile({
    required Widget tile,
    required BuildContext context,
  }) {
    return Column(
      children: [
        tile,
        const Divider(
          height: 1,
          indent: 72,
          endIndent: 24.0,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return wrapTile(
      tile: ListTile(
        leading: Icon(leadingIconData, color: danger ? M3Color.of(context).error : null),
        trailing: onTap == null || !navigateAction ? null : const Icon(Icons.keyboard_arrow_right),
        title: Text(title, style: TextStyle(color: danger ? M3Color.of(context).error : null)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 12,
        ),
        onTap: onTap,
      ),
      context: context,
    );
  }
}
