import 'package:flutter/material.dart';
import 'package:volcano_app/configurations/font_end.dart';

import 'Text_widget.dart';

class CustomFlatButton extends StatelessWidget {
  const CustomFlatButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.fontSize,
      this.color = FrontEndConfigs.kButtonYellowColor})
      : super(key: key);
  final String text;
  final double fontSize;
  final VoidCallback onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 230,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: color,
          boxShadow: [
            FrontEndConfigs.kInnerShadow,
            BoxShadow(
                color: FrontEndConfigs.kBlackColor.withOpacity(0.2),
                blurRadius: 10,
                offset: const Offset(0, 0))
          ]),
      child: FlatButton(
          onPressed: onPressed,
          child: TextWidget(
            text: text,
            fontSize: fontSize,
            fontWeight: FontWeight.w600,
            textColor: FrontEndConfigs.kBlackColor,
          )),
    );
  }
}
