import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:volcano_app/configurations/font_end.dart';
import 'package:volcano_app/presentation/elements/Text_widget.dart';

import '../../../deposit/deposit.dart';

class MemberShipActivationDialog extends StatelessWidget {
  const MemberShipActivationDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        height: 500,
        width: MediaQuery.of(context).size.width - 20,
        decoration: BoxDecoration(
          color: FrontEndConfigs.kWhiteColor,
          borderRadius: BorderRadius.circular(55),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 14, left: 37, bottom: 22, right: 10),
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: const Color(0xff1251B2),
                  border: Border.all(color: const Color(0xff707070)),
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(55))),
              child: Row(
                children: [
                  const Expanded(
                    child: TextWidget(
                      text: "More Actions Required",
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                      textColor: FrontEndConfigs.kWhiteColor,
                      align: TextAlign.start,
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  SvgPicture.asset("assets/icons/alert.svg")
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextWidget(
                  text:
                      "Members only. You would need sufficient USDT to activate your membership. Would you like to proceed to deposit?",
                  fontSize: 18,
                  align: TextAlign.start,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            const DottedLine(dashColor: Color(0xff707070)),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 10, right: 20),
              child: Row(
                children: [
                  Expanded(
                    child: FlatButton(
                        onPressed: () {
                          Get.back();
                        },
                        color: const Color(0xff575756),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: TextWidget(
                              text: "Later",
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: FlatButton(
                        onPressed: () {
                          Get.to(const DepositView());
                        },
                        color: const Color(0xffFFF711),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 11.0),
                          child: TextWidget(
                              text: "Go Deposit",
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
