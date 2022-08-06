import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../configurations/font_end.dart';
import '../../elements/Text_widget.dart';
import 'layout/body.dart';

class VolcanoTutorialView extends StatelessWidget {
  const VolcanoTutorialView({Key? key}) : super(key: key);

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
            text: "Volcano Tutorial",
            fontSize: 23,
            fontWeight: FontWeight.w600),
      ),
      body: const VolcanoTutorialViewBody(),
    );
  }
}
