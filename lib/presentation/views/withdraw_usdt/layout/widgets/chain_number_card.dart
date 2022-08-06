import 'package:flutter/material.dart';
import 'package:volcano_app/configurations/font_end.dart';

import '../../../../elements/Text_widget.dart';

class ChainNumberCard extends StatelessWidget {
  const ChainNumberCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: FrontEndConfigs.kWhiteColor, boxShadow: [
        FrontEndConfigs.kInnerShadow,
        FrontEndConfigs.kDropShadow,
      ]),
      child: Padding(
        padding: const EdgeInsets.only(left: 19),
        child: Row(
          children: [
            const TextWidget(
                text: "Chain:", fontSize: 19, fontWeight: FontWeight.w600),
            const SizedBox(
              width: 18,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
              color: const Color(0xff1251B2),
              child: const TextWidget(
                text: "TRC20",
                fontSize: 17,
                fontWeight: FontWeight.w600,
                textColor: FrontEndConfigs.kWhiteColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
