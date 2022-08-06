import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../configurations/font_end.dart';
import '../../../../elements/Text_widget.dart';
import '../../../../elements/custom_flat_button.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: SizedBox(
        height: 480,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(
                  "assets/icons/cross.svg",
                  color: FrontEndConfigs.kWhiteColor,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),
                    color: const Color(0xff0c8d7ef)),
                child: Stack(
                  children: [
                    Positioned(
                        top: 30,
                        right: 0,
                        child: SvgPicture.asset(
                            "assets/images/alert_dialog_decoration.svg",
                            height: 310)),
                    Positioned(
                        top: 0,
                        right: 0,
                        left: 0,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const TextWidget(
                                    text: "Chain:",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                                const SizedBox(
                                  width: 24,
                                ),
                                Container(
                                  height: 45,
                                  width: 90,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17),
                                      color: const Color(0xff1251B2)),
                                  child: const TextWidget(
                                    text: "TRC20",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    textColor: FrontEndConfigs.kWhiteColor,
                                  ),
                                ),
                                const SizedBox(
                                  width: 18,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 22,
                            ),
                            Container(
                              height: 89,
                              width: double.infinity,
                              color: FrontEndConfigs.kWhiteColor,
                              padding: const EdgeInsets.only(
                                  top: 5, left: 27, right: 30),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      TextWidget(
                                          text: "Wallet Address:",
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      TextWidget(
                                          align: TextAlign.left,
                                          text:
                                              "TBcVybQZaw3yjjjhddhhgdhd665\ntydghhgdhd665tydg",
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400),
                                    ],
                                  ),
                                  const Spacer(),
                                  SvgPicture.asset("assets/icons/copy_code.svg")
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            Container(
                              height: 104,
                              width: 117,
                              color: FrontEndConfigs.kWhiteColor,
                              padding: const EdgeInsets.all(6),
                              alignment: Alignment.center,
                              child: Image.asset(
                                "assets/images/qr_code.png",
                              ),
                            ),
                            const SizedBox(
                              height: 22,
                            ),
                            Container(
                              height: 32,
                              width: 155,
                              alignment: Alignment.center,
                              color: FrontEndConfigs.kButtonYellowColor,
                              child: const TextWidget(
                                text: "Current Balance: 0 USDT",
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                textColor: FrontEndConfigs.kWhiteColor,
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            CustomFlatButton(
                              text: "Verify Wallet Balance",
                              onPressed: () {},
                              fontSize: 14,
                            )
                          ],
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
