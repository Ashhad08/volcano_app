import 'package:flutter/material.dart';

import '../../../../elements/Text_widget.dart';

class Announcement extends StatelessWidget {
  const Announcement({
    Key? key,
    required this.announcementText,
    required this.onPressed, required this.date,
  }) : super(key: key);
  final String announcementText;
  final String date;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            color: Color(0xff707070),
            height: 0,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17, right: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                    align: TextAlign.start,
                    text: announcementText,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
                TextWidget(
                    align: TextAlign.start,
                    text: date,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
