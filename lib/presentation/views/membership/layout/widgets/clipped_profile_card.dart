import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../configurations/font_end.dart';
import '../../../../elements/Text_widget.dart';

class ClippedProfileCard extends StatelessWidget {
  const ClippedProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        height: 185,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(left: 36, right: 36, top: 10),
        color: FrontEndConfigs.kBlackColor,
        child: Container(
          padding: const EdgeInsets.only(top: 15, left: 21, right: 24),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xff707070)),
            borderRadius: const BorderRadius.vertical(top: Radius.circular(31)),
            gradient: const LinearGradient(colors: [
              Color(0xff1251B2),
              Color(0xff092959),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset("assets/icons/profile.svg"),
                  const SizedBox(
                    width: 16,
                  ),
                  const TextWidget(
                      text: "9g5jkf7",
                      fontSize: 23,
                      textColor: FrontEndConfigs.kWhiteColor,
                      fontWeight: FontWeight.w600),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 72 - 21),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    const TextWidget(
                        text: "120USDT/year membership",
                        fontSize: 14,
                        textColor: FrontEndConfigs.kWhiteColor,
                        fontWeight: FontWeight.w400),
                    const SizedBox(
                      height: 9,
                    ),
                    Row(
                      children: const [
                        TextWidget(
                            text: "V1",
                            fontSize: 20,
                            textColor: FrontEndConfigs.kWhiteColor,
                            fontWeight: FontWeight.w400),
                        SizedBox(
                          width: 6,
                        ),
                        Expanded(
                          child: Divider(
                            color: FrontEndConfigs.kBlackColor,
                            thickness: 1.5,
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        TextWidget(
                            text: "V1",
                            fontSize: 20,
                            textColor: FrontEndConfigs.kWhiteColor,
                            fontWeight: FontWeight.w400),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const TextWidget(
                        text: "Directly push 3 V1s and 20 team members",
                        fontSize: 12,
                        textColor: FrontEndConfigs.kWhiteColor,
                        fontWeight: FontWeight.w400),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - 70);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(
        size.width - size.width / 4, size.height, size.width, size.height - 70);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
