import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../configurations/font_end.dart';
import '../../../../elements/Text_widget.dart';

class AppBarWithProfitContainer extends StatelessWidget {
  const AppBarWithProfitContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.22,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.18,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.only(
                  top: 40, left: 10, right: 20, bottom: 30),
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xff1251B2),
                  Color(0xff114CA6),
                  Color(0xff092959),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
              child: Row(
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
                  const TextWidget(
                    text: "Circle owners income details",
                    fontSize: 18,
                    textColor: FrontEndConfigs.kWhiteColor,
                    fontWeight: FontWeight.w400,
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: FrontEndConfigs.kWhiteColor,
                  borderRadius: BorderRadius.circular(21),
                  boxShadow: [
                    FrontEndConfigs.kInnerShadow,
                    FrontEndConfigs.kDropShadow
                  ]),
              child: Row(
                children: const [
                  TextWidget(
                      text: "Cumulative profit",
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                  Spacer(),
                  TextWidget(
                      text: "0 USDT",
                      fontSize: 20,
                      textColor: Color(0xff439756),
                      fontWeight: FontWeight.w600),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
