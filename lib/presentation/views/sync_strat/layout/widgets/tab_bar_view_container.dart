import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../configurations/font_end.dart';
import '../../../../elements/Text_widget.dart';

class TabBarViewContainer extends StatelessWidget {
  const TabBarViewContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 20,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 11, vertical: 10),
      decoration: BoxDecoration(
          color: FrontEndConfigs.kWhiteColor,
          borderRadius: BorderRadius.circular(21),
          boxShadow: [
            FrontEndConfigs.kInnerShadow,
            FrontEndConfigs.kDropShadow
          ]),
      child: Column(
        children: [
          const Spacer(),
          SvgPicture.asset("assets/images/empty_box.svg"),
          const SizedBox(
            height: 15,
          ),
          const TextWidget(
              text: "You haven't started a synchronization strategy yet",
              fontSize: 12,
              fontWeight: FontWeight.w600)
        ],
      ),
    );
  }
}
