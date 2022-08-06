import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../configurations/font_end.dart';
import '../../../../elements/Text_widget.dart';

class OptionsRow extends StatelessWidget {
  const OptionsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset("assets/icons/discover.svg"),
        const SizedBox(
          width: 10,
        ),
        const TextWidget(
            text: 'Discover Circle', fontSize: 18, fontWeight: FontWeight.w600),
        const Spacer(),
        const TextWidget(
            text: 'ENGLISH', fontSize: 16, fontWeight: FontWeight.w400),
        const SizedBox(
          width: 5,
        ),
        SvgPicture.asset(
          "assets/icons/drop_down.svg",
          color: FrontEndConfigs.kBlackColor,
        ),
        const SizedBox(
          width: 12,
        ),
        SvgPicture.asset(
          "assets/icons/sort.svg",
          color: FrontEndConfigs.kBlackColor,
        ),
      ],
    );
  }
}
