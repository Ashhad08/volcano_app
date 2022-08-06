import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:volcano_app/configurations/font_end.dart';
import 'package:volcano_app/presentation/views/bottom_bar/bottom_bar_view.dart';

import '../../../../elements/Text_widget.dart';

class ConfirmBottomSheet extends StatelessWidget {
  const ConfirmBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      alignment: Alignment.topCenter,
      color: FrontEndConfigs.kWhiteColor,
      child: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 17, bottom: 23, left: 17, right: 26),
            decoration: BoxDecoration(
                color: FrontEndConfigs.kWhiteColor,
                boxShadow: [
                  FrontEndConfigs.kInnerShadow,
                  FrontEndConfigs.kDropShadow
                ]),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(const BottomBar());
                  },
                  child: const TextWidget(
                      text: "Cancel",
                      fontSize: 21,
                      textColor: Color(0xff1251B2),
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const TextWidget(
                    text: "Confirm",
                    fontSize: 21,
                    textColor: Color(0xff1251B2),
                    fontWeight: FontWeight.bold),
              ],
            ),
          ),
          const SizedBox(
            height: 155,
          ),
          const Divider(
            color: Color(0xff707070),
          ),
          const TextWidget(
              text: "2022-07-28", fontSize: 21, fontWeight: FontWeight.bold),
          const Divider(
            color: Color(0xff707070),
          ),
        ],
      ),
    );
  }
}
