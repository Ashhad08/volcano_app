import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../configurations/font_end.dart';
import '../../../../elements/Text_widget.dart';

class RecordsContainer extends StatelessWidget {
  const RecordsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          color: FrontEndConfigs.kWhiteColor,
          borderRadius: BorderRadius.circular(17),
          boxShadow: [
            FrontEndConfigs.kInnerShadow,
            FrontEndConfigs.kDropShadow,
          ]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 8.0, top: 25, right: 20, bottom: 10),
            child: Row(
              children: [
                SvgPicture.asset('assets/images/unicorn.svg'),
                const SizedBox(
                  width: 10,
                ),
                const TextWidget(
                    text: "1INCH", fontSize: 20, fontWeight: FontWeight.w600),
                const TextWidget(
                    text: "/", fontSize: 16, fontWeight: FontWeight.w600),
                const TextWidget(
                  text: "USDT",
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  textColor: Color(0xff575756),
                ),
                const Spacer(),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  color: const Color(0xffDCDEE4),
                  child: const TextWidget(
                    text: "Cycle",
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    textColor: Color(0xff1251B2),
                  ),
                ),
                const Spacer(),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  color: const Color(0xff575756),
                  child: const TextWidget(
                    text: "0.00%",
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    textColor: FrontEndConfigs.kWhiteColor,
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(
                top: 15, left: 24.0, right: 20, bottom: 30),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    TextWidget(
                      text: 'Quantity 0.0',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      textColor: Color(0xff575756),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    TextWidget(
                      text: 'Profit 0.709',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      textColor: Color(0xff575756),
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextWidget(
                      text: 'Floating profit +0.0000',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      textColor: Color(0xff575756),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(
                      children: const [
                        TextWidget(
                          text: 'Chg% ',
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          textColor: Color(0xff575756),
                        ),
                        TextWidget(
                          text: '11.48%',
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          textColor: Color(0xff439756),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
