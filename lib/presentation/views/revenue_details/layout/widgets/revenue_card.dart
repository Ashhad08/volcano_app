import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../configurations/font_end.dart';
import '../../../../elements/Text_widget.dart';

class RevenueCard extends StatelessWidget {
  const RevenueCard({
    Key? key,
    required this.isGradientCard,
  }) : super(key: key);
  final bool isGradientCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 20,
      padding: const EdgeInsets.only(top: 20, left: 15, bottom: 10, right: 10),
      decoration: BoxDecoration(
          gradient: isGradientCard
              ? const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff09429B), Color(0xff01250B1)])
              : const LinearGradient(colors: [
                  FrontEndConfigs.kButtonYellowColor,
                  FrontEndConfigs.kButtonYellowColor,
                ]),
          borderRadius: BorderRadius.circular(21)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: "Today's Profit(USDT)",
                      align: TextAlign.left,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      textColor: isGradientCard
                          ? FrontEndConfigs.kWhiteColor
                          : const Color(0xff361F02),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const TextWidget(
                          text: "0",
                          fontSize: 27,
                          fontWeight: FontWeight.w600,
                          textColor: FrontEndConfigs.kWhiteColor,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        SvgPicture.asset(
                          "assets/icons/eye_open.svg",
                          color: isGradientCard
                              ? FrontEndConfigs.kWhiteColor
                              : const Color(0xff361F02),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextWidget(
                      text: " =0 USD",
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                      textColor: FrontEndConfigs.kWhiteColor,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: "Cummulative profit(USDT)",
                      fontSize: 14,
                      align: TextAlign.left,
                      fontWeight: FontWeight.bold,
                      textColor: isGradientCard
                          ? FrontEndConfigs.kWhiteColor
                          : const Color(0xff361F02),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const TextWidget(
                              text: "0",
                              fontSize: 27,
                              fontWeight: FontWeight.w600,
                              textColor: FrontEndConfigs.kWhiteColor,
                            ),
                            isGradientCard ? Spacer() : SizedBox(),
                            isGradientCard
                                ? Expanded(
                                    child: SvgPicture.asset(
                                        "assets/images/coins.svg"),
                                  )
                                : SizedBox(),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const TextWidget(
                          text: "  =0 USD",
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          textColor: FrontEndConfigs.kWhiteColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 13,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              TextWidget(
                text: "Data within 24 hours might be real time.",
                fontSize: 14,
                fontWeight: FontWeight.w600,
                textColor: FrontEndConfigs.kWhiteColor,
              ),
              TextWidget(
                text: "Data is shown under Singapore time. (UTC+8)",
                fontSize: 14,
                fontWeight: FontWeight.w600,
                textColor: FrontEndConfigs.kWhiteColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}
