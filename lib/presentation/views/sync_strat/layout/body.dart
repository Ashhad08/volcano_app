import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:volcano_app/configurations/font_end.dart';

import 'widgets/my_tab_bar.dart';
import 'widgets/tab_bar_view_container.dart';

class SyncStratViewBody extends StatelessWidget {
  const SyncStratViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: FrontEndConfigs.kWhiteColor,
        body: SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.22,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(
                      top: 30, left: 20, right: 20, bottom: 30),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xff1251B2),
                      Color(0xff114CA6),
                      Color(0xff092959),
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: FrontEndConfigs.kWhiteColor,
                          )),
                      const Spacer(),
                      const MyTabBar(),
                    ],
                  ),
                ),
              ),
              const Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: SizedBox(
                    height: 250,
                    child: TabBarView(
                      physics: BouncingScrollPhysics(),
                      children: [
                        TabBarViewContainer(),
                        TabBarViewContainer(),
                        TabBarViewContainer(),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
