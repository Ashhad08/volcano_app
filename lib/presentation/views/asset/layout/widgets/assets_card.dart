import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:volcano_app/configurations/font_end.dart';
import 'package:volcano_app/presentation/views/details/details.dart';

import '../../../../elements/Text_widget.dart';

class AssetsCard extends StatelessWidget {
  const AssetsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 212,
      width: MediaQuery.of(context).size.width - 20,
      decoration: BoxDecoration(
          color: FrontEndConfigs.kButtonYellowColor,
          borderRadius: BorderRadius.circular(21),
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xffFFF711), Color(0xffEEE824)])),
      child: Stack(
        children: [
          Positioned(
              top: 6,
              right: 12,
              child: GestureDetector(
                onTap: () {
                  Get.to(const DetailsView());
                },
                child: Container(
                  height: 51,
                  width: 48,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: const Color(0xff1251B2), shape: BoxShape.circle),
                  child: SvgPicture.asset("assets/icons/copy_text.svg"),
                ),
              )),
          Positioned(
              top: 48,
              right: 33,
              child: Image.asset('assets/images/vlocano_shaded.png')),
          Positioned(
              top: 74,
              left: 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  TextWidget(
                    text: "Total Assets Converted (USDT)",
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                  TextWidget(
                    text: "0.00",
                    fontSize: 36,
                    textColor: FrontEndConfigs.kWhiteColor,
                    fontWeight: FontWeight.w600,
                  ),
                  TextWidget(
                    text: "=0 USD",
                    fontSize: 20,
                    textColor: FrontEndConfigs.kWhiteColor,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
