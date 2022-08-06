import 'package:flutter/material.dart';

import '../../../../../configurations/font_end.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      unselectedLabelColor: FrontEndConfigs.kBlackColor,
      padding: EdgeInsets.only(right: 60),
      labelStyle: TextStyle(
        fontFamily: "Segoe UI",
        fontSize: 20,
        color: Color(0xffFFF711),
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: TextStyle(
        fontFamily: "Segoe UI",
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      indicatorColor: Color(0xffFFF711),
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: Color(0xffFFF711),
      tabs: [
        Tab(
          text: "USDT",
        ),
        Tab(
          text: "BTC",
        ),
        Tab(
          text: "ETH",
        ),
      ],
    );
  }
}
