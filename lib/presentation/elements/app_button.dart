import 'package:flutter/material.dart';

import '../../configurations/font_end.dart';

class AppButton extends StatelessWidget {
  final String name;
  final Color? buttonColor;
  final double? height;
  final double? width;
  final double? textSize;
  final double? borderRadius;
  final double? padding;
  final Color? textColor;
  final FontWeight? fontWeight;
  final Function onTapped;
  final bool? isStartText;

  final bool showBorder;

  const AppButton({
    Key? key,
    required this.name,
    this.buttonColor,
    this.showBorder = false,
    this.height = 45,
    this.width,
    this.textSize = 14,
    this.textColor = Colors.white,
    this.fontWeight = FontWeight.w500,
    this.borderRadius = 0,
    required this.onTapped,
    this.padding = 0,
    this.isStartText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTapped(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding!),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: buttonColor,
            border: showBorder == true
                ? Border.all(width: 1, color: FrontEndConfigs.kAppButtonColor)
                : null,
            borderRadius: BorderRadius.circular(borderRadius!),
          ),
          child: isStartText == false
              ? Center(
                  child: Text(
                    name,
                    style: TextStyle(
                        fontSize: textSize,
                        color: textColor,
                        fontWeight: fontWeight),
                  ),
                )
              : Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
                  child: Text(
                    name,
                    style: TextStyle(
                        fontSize: textSize,
                        color: textColor,
                        fontWeight: fontWeight),
                  ),
                ),
        ),
      ),
    );
  }
}
