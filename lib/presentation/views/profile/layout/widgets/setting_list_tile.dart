import 'package:flutter/material.dart';

import '../../../../elements/Text_widget.dart';

class SettingListTile extends StatelessWidget {
  const SettingListTile({
    Key? key,
    required this.leadingImagePath,
    required this.title,
    this.trailingIcon = const Icon(
      Icons.arrow_forward_ios_outlined,
      color: Color(0xff575756),
    ),
    required this.onPressed,
  }) : super(key: key);
  final String leadingImagePath;
  final String title;
  final Widget? trailingIcon;
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
              leading: Image.asset(
                leadingImagePath,
                height: 30,
                width: 30,
                fit: BoxFit.fill,
              ),
              title: Row(
                children: [
                  TextWidget(
                      text: title, fontSize: 16, fontWeight: FontWeight.w600)
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
