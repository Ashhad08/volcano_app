import 'package:flutter/material.dart';

import '../../../../../configurations/font_end.dart';
import '../../../../elements/Text_widget.dart';

import 'my_custom_switch.dart';
import 'user_profile_card.dart';
import 'user_profile_row.dart';

class ProfitListTabBarView extends StatelessWidget {
  const ProfitListTabBarView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            height: 200,
            margin: const EdgeInsets.symmetric(horizontal: 22),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(27),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/crypto_banner.png"))),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding:
                const EdgeInsets.only(top: 11, left: 14, right: 10, bottom: 40),
            decoration: BoxDecoration(
                color: FrontEndConfigs.kWhiteColor,
                boxShadow: [
                  FrontEndConfigs.kInnerShadow,
                  FrontEndConfigs.kDropShadow
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    TextWidget(
                        text: "Total Revenue list",
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                    Spacer(),
                    CustomSwitch(),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                const TextWidget(
                    text: "Update data every morning (UTC+8)",
                    fontSize: 15,
                    textColor: Color(0xff575756),
                    fontWeight: FontWeight.w600),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    UserProfileCard(),
                    UserProfileCard(),
                    UserProfileCard(),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Column(
              children: const [
                UserProfileRow(),
                SizedBox(
                  height: 20,
                ),
                UserProfileRow(),
                SizedBox(
                  height: 20,
                ),
                UserProfileRow(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
