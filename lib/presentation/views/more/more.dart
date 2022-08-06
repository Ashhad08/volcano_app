import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../configurations/font_end.dart';
import '../../elements/Text_widget.dart';
import 'layout/body.dart';

class MoreView extends StatelessWidget {
  const MoreView({Key? key}) : super(key: key);

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
          TextButton(
            onPressed: () {},
            child: const TextWidget(
                text: "More      ", fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ],
        title: const TextWidget(
            text: "Edit", fontSize: 23, fontWeight: FontWeight.w600),
      ),
      body: const MoreViewBody(),
    );
  }
}
