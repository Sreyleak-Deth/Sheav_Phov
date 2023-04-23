import 'package:flutter/material.dart';

import 'labels.dart';

Text textHeader(String text, BuildContext context) {
  return Text(
    text,
    style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontFamily: Labels.FontNameDefault,
        fontSize: Labels.LargeTextSize,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400),
  );
}

Text textTelecom(String text, BuildContext context) {
  return Text(
    text,
    style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontFamily: Labels.FontNameDefault,
        fontSize: 16,
        fontWeight: FontWeight.w500),
  );
}

Text textVersion(String text, BuildContext context) {
  return Text(
    text,
    style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontFamily: Labels.FontNameDefault,
        fontSize: 16,
        fontWeight: FontWeight.w500),
  );
}

Text textAboutItemTitle(String text, BuildContext context) {
  return Text(
    text,
    style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontFamily: Labels.FontNameDefault,
        fontSize: 14,
        fontWeight: FontWeight.w500),
  );
}

Text titleSpeedBottomItem(String text, BuildContext context) {
  return Text(
    text,
    style: TextStyle(
        fontSize: 16,
        fontFamily: Labels.FontNameDefault,
        fontWeight: FontWeight.w500),
  );
}

Text subTitleSpeedBottomItem(String text, BuildContext context) {
  return Text(
    text,
    style: TextStyle(
        fontSize: 14,
        fontFamily: Labels.FontNameDefault,
        fontWeight: FontWeight.w400),
  );
}

Text textPrefixcommand(String text, BuildContext context) {
  return Text(
    text,
    style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontFamily: Labels.FontNameDefault,
        fontSize: 22,
        fontWeight: FontWeight.w400),
  );
}
