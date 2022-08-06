import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../configurations/font_end.dart';
import 'timeline_container.dart';

class TimeLineRow extends StatelessWidget {
  const TimeLineRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 70,
        ),
        const TimeLineContainer(
          iconPath: 'assets/icons/wallet.svg',
        ),
        const Expanded(
          child: Divider(
            color: FrontEndConfigs.kBorderColor,
            thickness: 2,
          ),
        ),
        const TimeLineContainer(
          iconPath: 'assets/icons/tap.svg',
        ),
        const Expanded(
          child: Divider(
            color: FrontEndConfigs.kBorderColor,
            thickness: 2,
          ),
        ),
        const TimeLineContainer(
          iconPath: 'assets/icons/link.svg',
        ),
        const SizedBox(
          width: 29,
        ),
        SvgPicture.asset("assets/icons/cross.svg"),
        const SizedBox(
          width: 26,
        ),
      ],
    );
  }
}
