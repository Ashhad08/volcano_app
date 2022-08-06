import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../elements/Text_widget.dart';

class RightsTiles extends StatelessWidget {
  const RightsTiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            height: 47,
            width: 49,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xff1251B2),
                Color(0xff092959),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
            child: SvgPicture.asset("assets/icons/badge.svg"),
          ),
          title: const TextWidget(
              text: "Direct recommend award",
              fontSize: 20,
              fontWeight: FontWeight.bold),
          subtitle: const TextWidget(
              text: "Robot activation direct push 30 USDT",
              fontSize: 13,
              fontWeight: FontWeight.w600),
        ),
        ListTile(
          leading: Container(
            height: 47,
            width: 49,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xff1251B2),
                Color(0xff092959),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
            child: SvgPicture.asset("assets/icons/team.svg"),
          ),
          title: const TextWidget(
              text: "Team awards", fontSize: 20, fontWeight: FontWeight.bold),
          subtitle: const TextWidget(
              text: "Profit distribution team award ratio 20%",
              fontSize: 13,
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
