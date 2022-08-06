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
      unselectedLabelColor: FrontEndConfigs.kWhiteColor,
      labelStyle: TextStyle(
        fontFamily: "Segoe UI",
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      unselectedLabelStyle: TextStyle(
        fontFamily: "Segoe UI",
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      indicatorColor: FrontEndConfigs.kWhiteColor,
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: FrontEndConfigs.kWhiteColor,
      indicatorWeight: 1,
      tabs: [
        Tab(
          text: "Binance",
        ),
        Tab(
          text: "Huobi",
        ),
        Tab(
          text: "Coinbase pro",
        ),
      ],
    );
  }
}
