import 'package:flutter/material.dart';

import '../../../../../configurations/font_end.dart';

class TopTabBar extends StatelessWidget {
  const TopTabBar({
    Key? key,
    required TabController topTabController,
  })  : _topTabController = topTabController,
        super(key: key);

  final TabController _topTabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      labelPadding: const EdgeInsets.symmetric(
        horizontal: 7,
      ),
      unselectedLabelColor: FrontEndConfigs.kBlackColor,
      labelStyle: const TextStyle(
        fontFamily: "Segoe UI",
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: const TextStyle(
        fontFamily: "Segoe UI",
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      indicator: const BoxDecoration(color: Color(0xffD8D8CD)),
      labelColor: const Color(0xff1251B2),
      controller: _topTabController,
      tabs: const [
        Tab(
          text: "Operation Strategy",
        ),
        Tab(
          text: "Hot",
        ),
        Tab(
          text: "24h Vol",
        ),
      ],
    );
  }
}
