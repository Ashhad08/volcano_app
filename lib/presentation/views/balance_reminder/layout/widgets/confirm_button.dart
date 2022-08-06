import 'package:flutter/material.dart';
import 'package:volcano_app/configurations/font_end.dart';

import '../../../../elements/Text_widget.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.radius = 15,
  }) : super(key: key);
  final VoidCallback onPressed;
  final String text;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 63,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius!),
            gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff114DA9), Color(0xff092755)])),
        child: TextWidget(
          text: text,
          fontSize: 18,
          fontWeight: FontWeight.w500,
          textColor: FrontEndConfigs.kWhiteColor,
        ),
      ),
    );
  }
}
