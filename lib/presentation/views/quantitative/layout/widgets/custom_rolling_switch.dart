import 'package:flutter/material.dart';
import 'package:rolling_switch/rolling_switch.dart';

class CustomRollingSwitch extends StatelessWidget {
  const CustomRollingSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RollingSwitch.icon(
      width: 150,
      height: 50,
      innerSize: 40,
      onChanged: (_) {},
      rollingInfoRight: const RollingIconInfo(
          iconColor: Color(0xff1251B2),
          backgroundColor:  Color(0xffEDF0F6),
          icon: Icons.swap_horiz,
          text: Text(
            "Convert to Rs",
            style: TextStyle(
              fontFamily: "Segoe UI",
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xff1251B2),
            ),
          )),
      rollingInfoLeft: const RollingIconInfo(
        iconColor: Color(0xff1251B2),
        backgroundColor: Color(0xffEDF0F6),
        icon: Icons.swap_horiz,
        text: Text(
          "Convert to USDT",
          style: TextStyle(
            fontFamily: "Segoe UI",
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color(0xff1251B2),
          ),
        ),
      ),
    );
  }
}
