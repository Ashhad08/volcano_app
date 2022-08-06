import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../elements/Text_widget.dart';

class UserProfileRow extends StatelessWidget {
  const UserProfileRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const TextWidget(text: '4', fontSize: 17, fontWeight: FontWeight.w600),
        const SizedBox(
          width: 12,
        ),
        SvgPicture.asset(
          'assets/images/profile.svg',
          height: 40,
          width: 40,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          width: 25,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            TextWidget(
                text: 'Swin98', fontSize: 17, fontWeight: FontWeight.w600),
            TextWidget(
                text: 'Total revenue: 134,00 USDT',
                fontSize: 12,
                textColor: Color(0xff575756),
                fontWeight: FontWeight.w600),
          ],
        )
      ],
    );
  }
}
