import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../configurations/font_end.dart';
import '../../elements/Text_widget.dart';
import 'layout/body.dart';
class RewardDetailsView extends StatelessWidget {
  const RewardDetailsView({Key? key}) : super(key: key);

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
        title: const TextWidget(
            text: "Reward Details",
            fontSize: 23,
            fontWeight: FontWeight.w600),
      ),
      body: const RewardDetailsViewBody(),
    );
  }
}
