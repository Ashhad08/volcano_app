import 'package:flutter/material.dart';
import 'package:volcano_app/configurations/font_end.dart';

import '../../../../elements/Text_widget.dart';
import '../../../../elements/custom_flat_button.dart';
import 'custom_dialog.dart';

class DetailsContainer extends StatelessWidget {
  const DetailsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8 - 213,
      padding: const EdgeInsets.only(left: 7, right: 16),
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff367EEC),
                Color(0xff092959),
              ]),
          boxShadow: [
            FrontEndConfigs.kInnerShadow,
            FrontEndConfigs.kDropShadow,
          ],
          borderRadius:
              const BorderRadius.vertical(top: const Radius.circular(19))),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const TextWidget(
              text: "Ensure you use TRC20 to deposit, or assets might be lost.",
              fontSize: 23,
              fontWeight: FontWeight.w400,
              textColor: FrontEndConfigs.kWhiteColor,
              align: TextAlign.left,
            ),
            const SizedBox(
              height: 15,
            ),
            const TextWidget(
              text:
                  "1. Please do not deposit any non-USDT assets to the address above.",
              fontSize: 19,
              fontWeight: FontWeight.w400,
              textColor: FrontEndConfigs.kWhiteColor,
              align: TextAlign.left,
            ),
            const SizedBox(
              height: 15,
            ),
            const TextWidget(
              text: "2. The deposit may take a short while to arrive.",
              fontSize: 19,
              fontWeight: FontWeight.w400,
              textColor: FrontEndConfigs.kWhiteColor,
              align: TextAlign.left,
            ),
            const SizedBox(
              height: 15,
            ),
            const TextWidget(
              text: "3. Funds may not be withdrawn from inactive accounts.",
              fontSize: 19,
              fontWeight: FontWeight.w400,
              textColor: FrontEndConfigs.kWhiteColor,
              align: TextAlign.left,
            ),
            const SizedBox(
              height: 60,
            ),
            CustomFlatButton(
                text: "Deposit",
                fontSize: 18,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const CustomDialog();
                      });
                }),
            const SizedBox(
              height: 63,
            ),
          ],
        ),
      ),
    );
  }
}
