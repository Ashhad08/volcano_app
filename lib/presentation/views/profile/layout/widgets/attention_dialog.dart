import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../configurations/font_end.dart';
import '../../../../elements/Text_widget.dart';
import '../../../../elements/custom_flat_button.dart';

class AttentionDialog extends StatelessWidget {
  const AttentionDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        height: 333,
        width: 345,
        padding:
            const EdgeInsets.only(left: 30, right: 30, bottom: 25, top: 15),
        decoration: BoxDecoration(
          color: FrontEndConfigs.kWhiteColor,
          borderRadius: BorderRadius.circular(23),
        ),
        child: Column(
          children: [
            SvgPicture.asset('assets/images/attention.svg'),
            const SizedBox(
              height: 20,
            ),
            const TextWidget(
              text:
                  'In order to ensure that you are fully aware of the potential risk, you need to pass a test before you start trading.',
              fontSize: 14,
              align: TextAlign.start,
              fontWeight: FontWeight.w600,
              textColor: Color(0xff575756),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomFlatButton(
                text: 'Start Now',
                color: const Color(0xffD8D8CD),
                onPressed: () {
                  Get.back();
                },
                fontSize: 16),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(value: false, onChanged: (val) {}),
                const TextWidget(
                    text: "I agree", fontSize: 18, fontWeight: FontWeight.w600)
              ],
            )
          ],
        ),
      ),
    );
  }
}
