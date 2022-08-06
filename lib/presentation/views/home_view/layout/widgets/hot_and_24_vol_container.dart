import 'package:flutter/material.dart';

import '../../../../../configurations/font_end.dart';
import '../../../../elements/Text_widget.dart';

class ShowHotAnd24VolContainer extends StatelessWidget {
  const ShowHotAnd24VolContainer({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    if (index != 0) {
      return Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            padding: const EdgeInsets.only(top: 11, left: 20, right: 20, bottom: 10),
            decoration:
                BoxDecoration(color: FrontEndConfigs.kWhiteColor, boxShadow: [
              FrontEndConfigs.kInnerShadow,
              FrontEndConfigs.kDropShadow,
            ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const TextWidget(
                        text: "Currency",
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: const [
                        TextWidget(
                            text: "ADA/",
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                        TextWidget(
                            text: "USDT",
                            fontSize: 9,
                            fontWeight: FontWeight.w600),
                      ],
                    )
                  ],
                ),
                Column(
                  children: const [
                    TextWidget(
                        text: "Last Price",
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                    SizedBox(
                      height: 8,
                    ),
                    TextWidget(
                        text: "0.4680",
                        fontSize: 15,
                        textColor: Color(0xffFC0B0B),
                        fontWeight: FontWeight.w600),
                  ],
                ),
                Column(
                  children: const [
                    TextWidget(
                        text: "Strategy ratio",
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                    SizedBox(
                      height: 8,
                    ),
                    TextWidget(
                        text: "3.74%",
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ],
                ),
              ],
            ),
          );
    } else {
      return const SizedBox();
    }
  }
}
