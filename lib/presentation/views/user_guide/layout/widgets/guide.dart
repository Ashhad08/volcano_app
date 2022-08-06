import 'package:flutter/material.dart';

import '../../../../elements/Text_widget.dart';

class Guide extends StatelessWidget {
  const Guide({
    Key? key,
    required this.guideText,
    required this.onPressed,
  }) : super(key: key);
  final String guideText;
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
            child: TextWidget(
                align: TextAlign.left,
                text: guideText,
                fontSize: 17,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
