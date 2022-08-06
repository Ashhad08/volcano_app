import 'package:flutter/material.dart';
import 'package:volcano_app/configurations/font_end.dart';

import '../../../../elements/Text_widget.dart';

class SingleLog extends StatelessWidget {
  const SingleLog({
    Key? key,
    required this.title,
    required this.dateAndTime,
    required this.onPressed,
  }) : super(key: key);
  final String title;
  final String dateAndTime;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding:
            const EdgeInsets.only(top: 12, left: 14, right: 15, bottom: 30),
        decoration: BoxDecoration(color: const Color(0xffF5F2F2), boxShadow: [
          FrontEndConfigs.kInnerShadow,
          FrontEndConfigs.kDropShadow
        ]),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                    align: TextAlign.start,
                    text: title,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
                const SizedBox(
                  height: 13,
                ),
                TextWidget(
                    text: dateAndTime,
                    fontSize: 15,
                    textColor: const Color(0xff575756),
                    fontWeight: FontWeight.w600),
                const SizedBox(
                  height: 13,
                ),
              ],
            ),
            const Spacer(),
            Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xffFE0606)),
            ),
            const SizedBox(
              width: 17,
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: FrontEndConfigs.kBlackColor,
            )
          ],
        ),
      ),
    );
  }
}
