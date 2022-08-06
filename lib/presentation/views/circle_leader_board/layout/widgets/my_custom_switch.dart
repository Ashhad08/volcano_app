import 'package:flutter/material.dart';
import 'package:rolling_switch/rolling_switch.dart';

import '../../../../elements/Text_widget.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RollingSwitch.widget(
      width: 130,
      height: 50,
      innerSize: 40,
      onChanged: (_) {},
      rollingInfoRight: const RollingWidgetInfo(
          backgroundColor: Color(0xffDBDBD1),
          text: Text(
            "Profit",
            style: TextStyle(
              fontFamily: "Segoe UI",
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          icon: TextWidget(
              text: 'Return Rate',
              fontSize: 11,
              textColor: Color(0xffFFF711),
              fontWeight: FontWeight.w600)),
      rollingInfoLeft: const RollingWidgetInfo(
          backgroundColor: Color(0xffDBDBD1),
          text: Text(
            "Return Rate",
            style: TextStyle(
              fontFamily: "Segoe UI",
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          icon: TextWidget(
              text: 'Profit',
              fontSize: 11,
              textColor: Color(0xffFFF711),
              fontWeight: FontWeight.w600)),
    );
  }
}
