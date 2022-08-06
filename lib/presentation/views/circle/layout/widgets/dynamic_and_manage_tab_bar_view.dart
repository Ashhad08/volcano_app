import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../elements/Text_widget.dart';

class DynamicAndManageTabBarView extends StatelessWidget {
  const DynamicAndManageTabBarView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: const Color(0xffEEEEE7),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
          ),
        )
      ],
    );
  }
}
