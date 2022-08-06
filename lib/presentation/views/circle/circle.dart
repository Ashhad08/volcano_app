import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:volcano_app/presentation/views/circle_leader_board/circle_leader_board.dart';

import '../../../configurations/font_end.dart';
import 'layout/body.dart';

class CircleView extends StatefulWidget {
  const CircleView({Key? key}) : super(key: key);

  @override
  State<CircleView> createState() => _CircleViewState();
}

class _CircleViewState extends State<CircleView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FrontEndConfigs.kWhiteColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.to(const CircleLeaderBoardView());
          },
          icon: SvgPicture.asset(
            'assets/icons/graph.svg',
          ),
        ),
        title: TabBar(
          controller: _tabController,
          unselectedLabelColor: FrontEndConfigs.kBlackColor,
          labelPadding: const EdgeInsets.symmetric(horizontal: 5),
          isScrollable: true,
          padding: EdgeInsets.zero,
          labelStyle: const TextStyle(
            fontFamily: "Segoe UI",
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: const TextStyle(
            fontFamily: "Segoe UI",
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
          indicatorColor: const Color(0xff1251B2),
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 4,
          labelColor: FrontEndConfigs.kBlackColor,
          tabs: const [
            Tab(
              text: "Circle",
            ),
            Tab(
              text: "Dynamic",
            ),
            Tab(
              text: "Manage",
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: FrontEndConfigs.kBlackColor,
              ))
        ],
      ),
      body: CircleViewBody(
        tabController: _tabController,
      ),
    );
  }
}
