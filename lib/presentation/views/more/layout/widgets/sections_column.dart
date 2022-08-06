import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../elements/Text_widget.dart';

class SectionsColumn extends StatelessWidget {
  const SectionsColumn({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.onPressed,
  }) : super(key: key);
  final String imagePath;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        width: 90,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(imagePath),
            const SizedBox(
              height: 14,
            ),
            TextWidget(text: title, fontSize: 14, fontWeight: FontWeight.w600),
          ],
        ),
      ),
    );
  }
}
