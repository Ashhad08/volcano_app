import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:volcano_app/presentation/views/balance_reminder/balance_reminder.dart';

import '../../../../elements/Text_widget.dart';

class HistoryRecordsContainer extends StatelessWidget {
  const HistoryRecordsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      color: const Color(0xffEEEEE7),
      padding: const EdgeInsets.only(top: 14, left: 11, right: 21),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const TextWidget(
                  text: "History record",
                  fontSize: 19,
                  textColor: Color(0xff1251B2),
                  fontWeight: FontWeight.w600),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Get.to(const BalanceReminderView());
                },
                child: Row(
                  children: [
                    const TextWidget(
                        text: "Today",
                        fontSize: 19,
                        textColor: Color(0xff1251B2),
                        fontWeight: FontWeight.w600),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset("assets/icons/arrow_forward.svg")
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 83,
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
                fontWeight: FontWeight.w600,
                textColor: Color(0xff575756),
              )
            ],
          )
        ],
      ),
    );
  }
}
