import 'package:flutter/material.dart';

import 'package:volcano_app/configurations/font_end.dart';

import 'widgets/my_tab_bar.dart';
import 'widgets/my_tab_bar_view.dart';

class RewardDetailsViewBody extends StatelessWidget {
  const RewardDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: FrontEndConfigs.kWhiteColor,
        body: Column(
          children: const [
            Divider(
              color: Color(0xff707070),
              thickness: 0.5,
            ),
            MyTabBar(),
            Divider(
              color: Color(0xff707070),
              thickness: 0.5,
              height: 1.3,
            ),
            Expanded(
              child: MyTabBarView(),
            ),
          ],
        ),
      ),
    );
  }
}
