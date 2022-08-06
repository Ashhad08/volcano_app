import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:volcano_app/configurations/font_end.dart';

class TimeLineContainer extends StatelessWidget {
  const TimeLineContainer({Key? key, required this.iconPath}) : super(key: key);
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      width: 45,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: const Color(0xffCBC4C4)),
        gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [FrontEndConfigs.kBorderColor, Color(0xff6C6C67)]),
      ),
      child: SvgPicture.asset(iconPath),
    );
  }
}
