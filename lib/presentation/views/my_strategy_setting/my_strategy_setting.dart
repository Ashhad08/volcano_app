import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../configurations/font_end.dart';
import '../../elements/Text_widget.dart';
import 'layout/body.dart';

class MyStrategySettingView extends StatelessWidget {
  const MyStrategySettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FrontEndConfigs.kWhiteColor,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: FrontEndConfigs.kBlackColor,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add,
              color: FrontEndConfigs.kBlackColor,
            ),
            onPressed: () {},
          ),
        ],
        title: const TextWidget(
            text: "My Strategy Setting",
            fontSize: 23,
            fontWeight: FontWeight.w600),
      ),
      body: const MyStrategySettingViewBody(),
    );
  }
}
