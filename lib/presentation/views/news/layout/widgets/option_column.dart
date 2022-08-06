import 'package:flutter/material.dart';

import '../../../../elements/Text_widget.dart';

class OptionColumn extends StatelessWidget {
  const OptionColumn({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.onPressed,
  }) : super(key: key);
  final String imagePath;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: Column(
          children: [
            Image.asset(
              imagePath,
              height: 60,
              width: 60,
            ),
            const SizedBox(
              height: 24,
            ),
            TextWidget(text: text, fontSize: 16, fontWeight: FontWeight.bold)
          ],
        ),
      ),
    );
  }
}
