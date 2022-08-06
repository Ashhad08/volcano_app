import 'package:flutter/material.dart';
import 'package:volcano_app/presentation/elements/Text_widget.dart';

import '../../../../configurations/font_end.dart';
import 'widgets/single_log.dart';

class SecurityLogViewBody extends StatelessWidget {
  const SecurityLogViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfigs.kWhiteColor,
      body: Column(
        children: [
          const Divider(),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 24,
                      width: 4,
                      color: const Color(0xffEEC009),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const TextWidget(
                      text: "2022-07-26",
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      textColor: Color(0xff707070),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                SingleLog(
                  dateAndTime: '2022-07-26 13:36:27',
                  title: 'Different Login Device',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 38,
                ),
                Row(
                  children: [
                    Container(
                      height: 24,
                      width: 4,
                      color: const Color(0xffEEC009),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const TextWidget(
                      text: "2022-07-23",
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      textColor: Color(0xff707070),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                SingleLog(
                    title: "Account Security\nEnforcement Complete",
                    dateAndTime: "2022-07-26 13:36:27",
                    onPressed: () {}),
                const SizedBox(
                  height: 31,
                ),
                SingleLog(
                    title: "Different login device",
                    dateAndTime: "2022-07-26 13:36:27",
                    onPressed: () {}),
                const SizedBox(
                  height: 60,
                ),
                const Center(
                  child: TextWidget(
                    text: "No more Data",
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    textColor: Color(0xff575756),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
