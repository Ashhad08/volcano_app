import 'package:flutter/material.dart';

import 'package:volcano_app/configurations/font_end.dart';

import 'widgets/app_bar_with_profit_container.dart';
import 'widgets/profit_details_container.dart';
import 'widgets/my_tab_bar.dart';

class CircleOwnersIncomeDetailsViewBody extends StatelessWidget {
  const CircleOwnersIncomeDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: FrontEndConfigs.kWhiteColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            AppBarWithProfitContainer(),
            SizedBox(
              height: 30,
            ),
            MyTabBar(),
            Expanded(
              child: TabBarView(
                children: [
                  ProfitDetailsContainer(),
                  ProfitDetailsContainer(),
                  ProfitDetailsContainer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
