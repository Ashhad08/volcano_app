import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../configurations/font_end.dart';
import '../../../../elements/Text_widget.dart';

class CircleInfoCard extends StatelessWidget {
  const CircleInfoCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.peoples,
    required this.message,
  }) : super(key: key);
  final String imagePath;
  final String title;
  final int peoples;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 210,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.only(top: 20, left: 15, bottom: 14, right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          color: FrontEndConfigs.kWhiteColor,
          boxShadow: [
            FrontEndConfigs.kInnerShadow,
            FrontEndConfigs.kDropShadow
          ]),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                imagePath,
                height: 90,
                width: 90,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        color: const Color(0xff1251B2),
                        child: const TextWidget(
                            text: 'Free',
                            fontSize: 12,
                            textColor: FrontEndConfigs.kWhiteColor,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextWidget(
                          text: title,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                      const SizedBox(
                        width: 7,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 8),
                        decoration: BoxDecoration(
                            color: const Color(0xffFFF711),
                            borderRadius: BorderRadius.circular(19)),
                        child: const TextWidget(
                            text: 'View',
                            fontSize: 14,
                            textColor: FrontEndConfigs.kWhiteColor,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                              color: Color(0xff1251B2), shape: BoxShape.circle),
                          child: const Icon(
                            Icons.swap_horiz,
                            color: FrontEndConfigs.kWhiteColor,
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      const TextWidget(
                          text: 'Syn Strategy is turned on',
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset('assets/images/group_peple.svg'),
                      const SizedBox(
                        width: 5,
                      ),
                      TextWidget(
                          text: '$peoples people\njoined',
                          fontSize: 12,
                          align: TextAlign.start,
                          fontWeight: FontWeight.w600),
                    ],
                  )
                ],
              )
            ],
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            margin: const EdgeInsets.symmetric(horizontal: 40),
            color: const Color(0xffDBDBD1),
            child: TextWidget(
                text: message,
                fontSize: 11,
                align: TextAlign.start,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
