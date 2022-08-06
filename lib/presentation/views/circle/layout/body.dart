import 'package:flutter/material.dart';

import 'package:volcano_app/configurations/font_end.dart';

import 'widgets/circle_tab_view.dart';
import 'widgets/dynamic_and_manage_tab_bar_view.dart';

class CircleViewBody extends StatelessWidget {
  const CircleViewBody({Key? key, required this.tabController})
      : super(key: key);
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: FrontEndConfigs.kWhiteColor,
        body: SizedBox(
          height: MediaQuery.of(context).size.height * 0.82,
          child: TabBarView(
            controller: tabController,
            children: const [
              CircleTabView(),
              DynamicAndManageTabBarView(),
              DynamicAndManageTabBarView(),
            ],
          ),
        ));
  }
}
