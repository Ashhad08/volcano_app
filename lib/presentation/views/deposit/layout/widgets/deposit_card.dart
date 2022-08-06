import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:volcano_app/configurations/font_end.dart';
import 'package:volcano_app/presentation/elements/Text_widget.dart';

class DepositCard extends StatelessWidget {
  const DepositCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 158,
        width: 340,
        padding: const EdgeInsets.only(top: 20, left: 25, right: 24),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(36),
            color: FrontEndConfigs.kWhiteColor,
            boxShadow: [
              FrontEndConfigs.kInnerShadow,
              FrontEndConfigs.kDropShadow,
            ]),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                TextWidget(
                  text: "Deposit USDT Only",
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: 12,
                ),
                TextWidget(
                    text:
                        "You need 120 USDT activation\nfee and some fuel fee to start\nyour trading",
                    fontSize: 15,
                    align: TextAlign.left,
                    fontWeight: FontWeight.w600)
              ],
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/icons/quesntion_mark.svg"),
                  SvgPicture.asset(
                    "assets/images/bitcoin.svg",
                    height: 70,
                    width: 90,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
