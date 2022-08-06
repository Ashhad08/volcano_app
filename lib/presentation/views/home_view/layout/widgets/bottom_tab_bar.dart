import 'package:flutter/material.dart';

import '../../../../../configurations/font_end.dart';

class BottomTabBar extends StatelessWidget {
  const BottomTabBar({
    Key? key,
    required TabController operationStrategyTabController,
  })  : _operationStrategyTabController = operationStrategyTabController,
        super(key: key);

  final TabController _operationStrategyTabController;

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
      controller: _operationStrategyTabController,
      tabs: const [
        Tab(
          text: "ALL",
        ),
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
