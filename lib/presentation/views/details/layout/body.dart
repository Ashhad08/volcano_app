import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:volcano_app/configurations/font_end.dart';
import 'package:volcano_app/presentation/views/deposit/deposit.dart';
import 'package:volcano_app/presentation/views/withdraw_usdt/withdraw_usdt.dart';

import '../../../elements/Text_widget.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: FrontEndConfigs.kWhiteColor,
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.topCenter,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xff1251B2),
                Color(0xff114CA6),
                Color(0xff092959)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 24, bottom: 10),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: FrontEndConfigs.kWhiteColor,
                        ),
                        onPressed: () {
                          Get.back();
                        },
                      ),
                      const Spacer(),
                      const TextWidget(
                          text: "Details",
                          fontSize: 25,
                          textColor: FrontEndConfigs.kWhiteColor,
                          fontWeight: FontWeight.w600),
                      const Spacer(),
                      const SizedBox(
                        width: 1,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: FrontEndConfigs.kBlackColor
                                    .withOpacity(0.2),
                                blurRadius: 10,
                                offset: const Offset(0, 0))
                          ]),
                          child: FlatButton(
                              height: 60,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(22)),
                              color: FrontEndConfigs.kWhiteColor,
                              onPressed: () {
                                Get.to(const DepositView());
                              },
                              child: const TextWidget(
                                text: "Deposit",
                                fontSize: 23,
                                fontWeight: FontWeight.w500,
                                textColor: Color(0xff1251B2),
                              )),
                        ),
                      ),
                      const SizedBox(
                        width: 9,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: FrontEndConfigs.kBlackColor
                                    .withOpacity(0.2),
                                blurRadius: 10,
                                offset: const Offset(0, 0))
                          ]),
                          child: FlatButton(
                              height: 60,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(22)),
                              color: const Color(0xff9B9B98),
                              onPressed: () {
                                Get.to(const WithdrawUSDTView());
                              },
                              child: const TextWidget(
                                text: "Withdraw",
                                fontSize: 23,
                                fontWeight: FontWeight.w500,
                                textColor: FrontEndConfigs.kWhiteColor,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 200,
                ),
                Column(
                  children: [
                    SvgPicture.asset(
                      "assets/images/no_records.svg",
                    ),
                    const TextWidget(
                      text: "No records",
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    )
                  ],
                )
              ],
            )));
  }
}
