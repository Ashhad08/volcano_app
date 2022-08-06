import 'package:flutter/material.dart';
import 'package:volcano_app/configurations/font_end.dart';
import 'package:volcano_app/presentation/elements/Text_widget.dart';

class RulesCard extends StatelessWidget {
  const RulesCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 26, left: 16, bottom: 40, right: 16),
      decoration: BoxDecoration(color: FrontEndConfigs.kWhiteColor, boxShadow: [
        FrontEndConfigs.kInnerShadow,
        FrontEndConfigs.kDropShadow
      ]),
      child: Column(
        children: const [
          TextWidget(
              text: "Member use rules",
              fontSize: 22,
              fontWeight: FontWeight.w600),
          SizedBox(
            height: 32,
          ),
          TextWidget(
              text:
                  "1. Directly push users profit to deduct the positive part of fuel consumption, and directly push member to purchase activation code",
              fontSize: 15,
              align: TextAlign.left,
              textColor: Color(0xff575756),
              fontWeight: FontWeight.w600),
          TextWidget(
              text: " 2. The final interpretation right belongs to the company",
              fontSize: 15,
              align: TextAlign.left,
              textColor: Color(0xff575756),
              fontWeight: FontWeight.w600),
        ],
      ),
    );
  }
}
