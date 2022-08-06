import 'package:flutter/material.dart';

class FrontEndConfigs {
  static const Color kWhiteColor = Colors.white;
  static const Color kBlackColor = Color(0xff0C0B0B);
  static const Color kBorderColor = Color(0xffD8D8CD);
  static const Color kButtonYellowColor = Color(0xffEEE71C);
  static const Color kAppButtonColor = Color(0xff114DA9);
  static const Color kAppScreenDefColor = Color(0xfffafafa);
  static const Color kAuthScreenColor = Color(0xffEAC35E);
  static BoxShadow kInnerShadow = BoxShadow(
      color: kBlackColor.withOpacity(0.2),
      blurRadius: 6,
      offset: const Offset(0, -3));
  static BoxShadow kDropShadow = BoxShadow(
      color: kBlackColor.withOpacity(0.2),
      blurRadius: 6,
      offset: const Offset(0, 3));
}
