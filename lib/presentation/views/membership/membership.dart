import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../configurations/font_end.dart';
import '../../elements/Text_widget.dart';
import 'layout/body.dart';

class MemberShipView extends StatelessWidget {
  const MemberShipView({Key? key}) : super(key: key);

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
            icon: SvgPicture.asset(
              "assets/icons/refresh.svg",
              color: FrontEndConfigs.kBlackColor,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          const SizedBox(
            width: 26,
          )
        ],
        title: const TextWidget(
            text: "Volcano Q", fontSize: 23, fontWeight: FontWeight.w600),
      ),
      body: const MemberShipViewBody(),
    );
  }
}
