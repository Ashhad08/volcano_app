import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../configurations/font_end.dart';
import '../../../../elements/Text_widget.dart';
import '../../../../elements/custom_flat_button.dart';
import 'profit_analysis_view.dart';

class InfoContainerWithTabBar extends StatelessWidget {
  const InfoContainerWithTabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.56,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 40,
            padding:
                const EdgeInsets.only(top: 18, right: 35, bottom: 20, left: 18),
            color: const Color(0xffEEEEE7),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset("assets/icons/info.svg"),
                const SizedBox(
                  width: 21,
                ),
                Expanded(
                  child: Column(
                    children: const [
                      TextWidget(
                          text:
                              "While using sub-bin mode, profit will only be shown after all positions are closed.",
                          fontSize: 12,
                          align: TextAlign.left,
                          fontWeight: FontWeight.w600),
                      TextWidget(
                          text:
                              "Profit will directly go into your exchange balance",
                          fontSize: 12,
                          align: TextAlign.left,
                          fontWeight: FontWeight.w600),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
                isScrollable: true,
                unselectedLabelColor: FrontEndConfigs.kBlackColor,
                labelStyle: TextStyle(
                  fontFamily: "Segoe UI",
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
                indicatorColor: Color(0xff1251B2),
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Color(0xff1251B2),
                tabs: [
                  Tab(
                    text: "History record",
                  ),
                  Tab(
                    text: "Profit analysis",
                  ),
                ]),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3329,
            child:
                TabBarView(physics: const BouncingScrollPhysics(), children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.33,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                color: const Color(0xffEEEEE7),
                child: CustomFlatButton(
                  text: 'Get Started',
                  onPressed: () {},
                  fontSize: 18,
                ),
              ),
              const ProfitAnalysisView(),
            ]),
          ),
        ],
      ),
    );
  }
}
