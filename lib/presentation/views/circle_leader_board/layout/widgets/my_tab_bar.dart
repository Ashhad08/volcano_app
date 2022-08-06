import 'package:flutter/material.dart';

import '../../../../../configurations/font_end.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBar(
        isScrollable: true,
        unselectedLabelColor: FrontEndConfigs.kBlackColor,
        labelStyle: TextStyle(
          fontFamily: "Segoe UI",
          fontSize: 17,
          fontWeight: FontWeight.w600,
        ),
        indicatorColor: Color(0xff1251B2),
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: Color(0xff1251B2),
        tabs: [
          Tab(
            text: "Profit list",
          ),
          Tab(
            text: "Hot list",
          ),
          Tab(
            text: "Popularity list",
          ),
        ]);
  }
}
