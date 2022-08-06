import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:volcano_app/configurations/font_end.dart';
import 'package:volcano_app/presentation/views/asset/asset.dart';

import '../../../../elements/Text_widget.dart';
import '../../../balance_reminder/layout/widgets/confirm_button.dart';
import '../../withdraw_usdt.dart';

class AddNewAddressBottomSheet extends StatelessWidget {
  const AddNewAddressBottomSheet({
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
                const TextWidget(
                    text: "Add New Address",
                    fontSize: 21,
                    textColor: Color(0xff1251B2),
                    fontWeight: FontWeight.bold),
                const Spacer(),
                GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: SvgPicture.asset("assets/icons/cross.svg"))
              ],
            ),
          ),
          const SizedBox(
            height: 55,
          ),
          Column(
            children: [
              SvgPicture.asset(
                "assets/images/no_records.svg",
                color: const Color(0xff575756),
              ),
              const TextWidget(
                text: "No records",
                fontSize: 14,
                textColor: Color(0xff575756),
                fontWeight: FontWeight.w600,
              )
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 29),
            child: ConfirmButton(
              onPressed: () {
                Get.to(const AssetView());
              },
              text: 'Confirm',
            ),
          )
        ],
      ),
    );
  }
}
