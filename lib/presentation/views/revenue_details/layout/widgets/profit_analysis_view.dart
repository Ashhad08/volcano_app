import 'package:flutter/material.dart';
import 'package:volcano_app/presentation/elements/Text_widget.dart';

import '../../../../../configurations/font_end.dart';

class ProfitAnalysisView extends StatelessWidget {
  const ProfitAnalysisView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 20, right: 14, left: 14),
      padding: const EdgeInsets.only(top: 20, left: 6),
      decoration: BoxDecoration(color: FrontEndConfigs.kWhiteColor, boxShadow: [
        FrontEndConfigs.kInnerShadow,
        FrontEndConfigs.kDropShadow,
      ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextWidget(
              text: "Income Statistics",
              fontSize: 19,
              fontWeight: FontWeight.w600),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(7),
                color: const Color(0xffDBDBD1),
                child: const TextWidget(
                    text: "Profit analysis",
                    fontSize: 16,
                    textColor: Color(0xff1251B2),
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                width: 44,
              ),
              const TextWidget(
                  text: "A month", fontSize: 16, fontWeight: FontWeight.w600),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  flex: 2,
                  child: Image.asset(
                    "assets/icons/chart.png",
                    height: 130,
                    width: 150,
                  )),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 16,
                          width: 18,
                          color: FrontEndConfigs.kButtonYellowColor,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const TextWidget(
                            text: "Binance",
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 16,
                          width: 18,
                          color: const Color(0xff1251B2),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const TextWidget(
                            text: "Huobi",
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 16,
                          width: 18,
                          color: const Color(0xff67E22A),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const TextWidget(
                            text: "Coinbase",
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
