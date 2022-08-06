import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../configurations/font_end.dart';
import '../../../../elements/Text_widget.dart';

class ProfitDetailsContainer extends StatelessWidget {
  const ProfitDetailsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff8E8C8C).withOpacity(0.26),
      padding: const EdgeInsets.only(top: 17, left: 15, right: 21),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const TextWidget(
                  text: "Profit details",
                  fontSize: 19,
                  fontWeight: FontWeight.w600),
              const Spacer(),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    const TextWidget(
                        text: "Today",
                        fontSize: 19,
                        fontWeight: FontWeight.w600),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset(
                      "assets/icons/arrow_forward.svg",
                      color: FrontEndConfigs.kBlackColor,
                    )
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
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
          ),
          const Spacer()
        ],
      ),
    );
  }
}
