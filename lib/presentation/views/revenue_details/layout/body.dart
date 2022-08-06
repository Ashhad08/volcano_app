import 'package:flutter/material.dart';

import 'package:volcano_app/configurations/font_end.dart';

import 'widgets/my_app_bar_Container.dart';
import 'widgets/info_container.dart';
import 'widgets/revenue_card.dart';

class RevenueDetailsViewBody extends StatelessWidget {
  const RevenueDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: FrontEndConfigs.kWhiteColor,
        body: Stack(
          children: [
            const Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: MyAppBarContainer(),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.85,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: const [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: InfoContainerWithTabBar(),
                    ),
                    Positioned(
                      top: 0,
                      child: RevenueCard(
                        isGradientCard: false,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
