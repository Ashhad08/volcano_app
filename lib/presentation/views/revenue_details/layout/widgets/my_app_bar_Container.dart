import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../configurations/font_end.dart';
import '../../../../elements/Text_widget.dart';
import 'bottom_sheet.dart';

class MyAppBarContainer extends StatelessWidget {
  const MyAppBarContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.21,
      alignment: Alignment.topCenter,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [Color(0xff1251B2), Color(0xff092959)],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      padding: const EdgeInsets.only(top: 44, left: 22, right: 22),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios,
                color: FrontEndConfigs.kWhiteColor),
            onPressed: () {
              Get.back();
            },
          ),
          const Spacer(),
          const TextWidget(
              text: "Revenue Details",
              fontSize: 25,
              textColor: FrontEndConfigs.kWhiteColor,
              fontWeight: FontWeight.w600),
          const Spacer(),
          GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(23)),
                    ),
                    builder: (context) {
                      return const CustomBottomSheet();
                    });
              },
              child:
                  // ? SvgPicture.asset("assets/icons/setting.svg")
                  SvgPicture.asset("assets/icons/share.svg")),
        ],
      ),
    );
  }
}
