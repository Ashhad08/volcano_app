import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../elements/Text_widget.dart';
import '../../../revenue_details/layout/widgets/revenue_card.dart';

class MyTabBarView extends StatelessWidget {
  const MyTabBarView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(physics: const BouncingScrollPhysics(), children: [
      _buildTabBarView(),
      _buildTabBarView(),
      _buildTabBarView(),
      _buildTabBarView(),
    ]);
  }

  Widget _buildTabBarView() {
    return Padding(
      padding: const EdgeInsets.only(top: 26, right: 10, left: 10),
      child: Column(
        children: [
          const RevenueCard(isGradientCard: true),
          const SizedBox(
            height: 108,
          ),
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
    );
  }
}
