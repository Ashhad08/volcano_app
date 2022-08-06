import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../elements/Text_widget.dart';
import '../../../chat/chat.dart';

class WantToChatDialog extends StatelessWidget {
  const WantToChatDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        TextButton(
          onPressed: () {
            Get.back();
          },
          child: const TextWidget(
              text: "Cancel",
              fontSize: 18,
              textColor: Color(0xff1251B2),
              fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Get.to(const ChatView());
          },
          child: const TextWidget(
              text: "Chat",
              fontSize: 18,
              textColor: Color(0xff1251B2),
              fontWeight: FontWeight.bold),
        )
      ],
      title: const TextWidget(
          text: "My Counsellor", fontSize: 23, fontWeight: FontWeight.bold),
      content: const TextWidget(
          text: "3xykybm0 (43RR6)", fontSize: 18, fontWeight: FontWeight.w600),
    );
  }
}
