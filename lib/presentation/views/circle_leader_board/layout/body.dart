import 'package:flutter/material.dart';

import 'package:volcano_app/configurations/font_end.dart';

import 'package:volcano_app/presentation/views/circle_leader_board/layout/widgets/my_tab_bar.dart';

import 'widgets/profile_list_tab_bar_view.dart';

class CircleLeaderBoardViewBody extends StatelessWidget {
  const CircleLeaderBoardViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: FrontEndConfigs.kWhiteColor,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const Divider(),
              const MyTabBar(),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child: const TabBarView(children: [
                  ProfitListTabBarView(),
                  SizedBox(),
                  SizedBox(),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
