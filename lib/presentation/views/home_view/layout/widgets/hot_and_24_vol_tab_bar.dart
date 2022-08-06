import 'package:flutter/material.dart';

import '../../../../../configurations/font_end.dart';

class HotAnd24VolTabBar extends StatelessWidget {
  const HotAnd24VolTabBar({
    Key? key,
    required TabController hotAnd24VolTabController,
  })  : _hotAnd24VolTabController = hotAnd24VolTabController,
        super(key: key);

  final TabController _hotAnd24VolTabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      unselectedLabelColor: FrontEndConfigs.kBlackColor,
      labelStyle: const TextStyle(
        fontFamily: "Segoe UI",
        fontSize: 17,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: const TextStyle(
        fontFamily: "Segoe UI",
        fontSize: 17,
        fontWeight: FontWeight.w500,
      ),
      indicatorColor: FrontEndConfigs.kButtonYellowColor,
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: FrontEndConfigs.kButtonYellowColor,
      controller: _hotAnd24VolTabController,
      tabs: const [
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
