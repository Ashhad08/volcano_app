import 'package:flutter/material.dart';

import '../../../../../configurations/font_end.dart';
import '../../../../elements/Text_widget.dart';

class ChainNumberCard extends StatelessWidget {
  const ChainNumberCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 147,
      padding: const EdgeInsets.only(top: 12),
      decoration: BoxDecoration(
          color: const Color(0xff1251B2),
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            FrontEndConfigs.kInnerShadow,
            FrontEndConfigs.kDropShadow,
          ]),
      child: const TextWidget(
        text: "TRC20",
        fontSize: 25,
        fontWeight: FontWeight.w600,
        textColor: FrontEndConfigs.kWhiteColor,
      ),
    );
  }
}
