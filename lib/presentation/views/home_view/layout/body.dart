import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:volcano_app/configurations/font_end.dart';
import 'package:volcano_app/presentation/elements/Text_widget.dart';
import 'package:volcano_app/presentation/views/latest_announcement/latest_announcement.dart';
import 'package:volcano_app/presentation/views/more/layout/widgets/commonly_used_items_card.dart';

import 'widgets/bottom_tab_bar.dart';
import 'widgets/display_container.dart';
import 'widgets/hot_and_24_vol_container.dart';
import 'widgets/hot_and_24_vol_tab_bar.dart';
import 'widgets/top_tab_bar.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody>
    with TickerProviderStateMixin {
  late TabController _topTabController;
  late int currentTopTabBarIndex = 0;
  late TabController _operationStrategyTabController;
  late TabController _hotAnd24VolTabController;

  @override
  void initState() {
    super.initState();
    _topTabController = TabController(length: 3, vsync: this);
    _topTabController.addListener(() {
      setState(() {
        currentTopTabBarIndex = _topTabController.index;
      });
    });
    _operationStrategyTabController = TabController(length: 4, vsync: this);
    _hotAnd24VolTabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _topTabController.dispose();
    _operationStrategyTabController.dispose();
    _hotAnd24VolTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const DisplayContainer(),
            GestureDetector(
              onTap: () {
                Get.to(const LatestAnnouncementView());
              },
              child: Row(
                children: [
                  const SizedBox(
                    width: 24,
                  ),
                  SvgPicture.asset("assets/icons/notification.svg"),
                  const SizedBox(
                    width: 23,
                  ),
                  const TextWidget(
                      text: "Look out for Scammers",
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                  const Spacer(),
                  SvgPicture.asset("assets/icons/menu_small.svg"),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CommonlyUsedItemsCard(
                addMoreButton: true,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  color: FrontEndConfigs.kWhiteColor,
                  borderRadius: BorderRadius.circular(19),
                  boxShadow: [FrontEndConfigs.kDropShadow]),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 23, left: 10, right: 11),
                    child: Row(
                      children: [
                        TopTabBar(topTabController: _topTabController),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21),
                            color: const Color(0xffD8D8CD),
                          ),
                          child: Row(
                            children: [
                              const TextWidget(
                                  text: "Binance",
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                              const SizedBox(
                                width: 4,
                              ),
                              SvgPicture.asset(
                                "assets/icons/drop_down.svg",
                                color: FrontEndConfigs.kBlackColor,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const Divider(),
                  SizedBox(
                    height: 40,
                    child: TabBarView(
                      controller: _topTabController,
                      children: [
                        BottomTabBar(
                            operationStrategyTabController:
                                _operationStrategyTabController),
                        HotAnd24VolTabBar(
                            hotAnd24VolTabController:
                                _hotAnd24VolTabController),
                        HotAnd24VolTabBar(
                            hotAnd24VolTabController:
                                _hotAnd24VolTabController),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
              child: TabBarView(
                controller: _operationStrategyTabController,
                children: const [
                  SizedBox(),
                  SizedBox(),
                  SizedBox(),
                  SizedBox(),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              child: TabBarView(
                controller: _hotAnd24VolTabController,
                children: [
                  ShowHotAnd24VolContainer(
                    index: currentTopTabBarIndex,
                  ),
                  ShowHotAnd24VolContainer(
                    index: currentTopTabBarIndex,
                  ),
                  ShowHotAnd24VolContainer(
                    index: currentTopTabBarIndex,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
