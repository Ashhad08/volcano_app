import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../configurations/font_end.dart';
import '../../../../elements/Text_widget.dart';

class VideoPlayer extends StatelessWidget {
  const VideoPlayer({
    Key? key,
    required this.color,
    required this.title,
  }) : super(key: key);
  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 219,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          color: color,
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              SvgPicture.asset("assets/icons/play.svg"),
              const SizedBox(
                height: 56,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 63, vertical: 20),
                child: Container(
                  height: 8,
                  decoration: BoxDecoration(
                      color: FrontEndConfigs.kWhiteColor,
                      border: Border.all(color: const Color(0xff707070))),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 29,
        ),
        TextWidget(text: title, fontSize: 20, fontWeight: FontWeight.bold),
        const SizedBox(
          height: 29,
        ),
      ],
    );
  }
}
