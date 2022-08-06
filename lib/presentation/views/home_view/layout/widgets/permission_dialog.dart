import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:volcano_app/configurations/font_end.dart';

import '../../../../elements/Text_widget.dart';

class PermissionDialog extends StatelessWidget {
  const PermissionDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        height: 176,
        width: 333,
        padding:
            const EdgeInsets.only(left: 28, top: 20, right: 30, bottom: 15),
        color: FrontEndConfigs.kWhiteColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.camera_alt,
                  color: Color(0xff439756),
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                TextWidget(
                    text: "Allow Volcano to\ntake pictures and\nrecord video? ",
                    fontSize: 18,
                    align: TextAlign.start,
                    fontWeight: FontWeight.w600)
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const TextWidget(
                        text: "DENY",
                        fontSize: 14,
                        textColor: const Color(0xff439756),
                        fontWeight: FontWeight.w600)),
                TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const TextWidget(
                        text: "ALLOW",
                        fontSize: 14,
                        textColor: const Color(0xff439756),
                        align: TextAlign.start,
                        fontWeight: FontWeight.w600))
              ],
            )
          ],
        ),
      ),
    );
  }
}
