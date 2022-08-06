import 'package:flutter/material.dart';

import '../../../../elements/Text_widget.dart';

class InfoListTile extends StatelessWidget {
  const InfoListTile({
    Key? key,
    required this.title,
    required this.trailingIcon,
    required this.onPressed,
  }) : super(key: key);
  final String title;
  final Widget trailingIcon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              title: Row(
                children: [
                  TextWidget(
                      text: title, fontSize: 18, fontWeight: FontWeight.w600)
                ],
              ),
              trailing: trailingIcon,
            ),
          ),
          const Divider(
            height: 0,
            color: Color(0xff707070),
          ),
        ],
      ),
    );
  }
}
