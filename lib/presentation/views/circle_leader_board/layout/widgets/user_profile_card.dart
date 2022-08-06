import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../configurations/font_end.dart';
import '../../../../elements/Text_widget.dart';

class UserProfileCard extends StatelessWidget {
  const UserProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 100,
      decoration: const BoxDecoration(
        color: Color(0xffEEEEDF),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(15),
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 36,
              width: 54,
              alignment: Alignment.center,
              padding: const EdgeInsets.only(bottom: 7),
              decoration: const BoxDecoration(
                  color: Color(0xffFFF711),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(30),
                  )),
              child: const TextWidget(
                text: 'No 1',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                textColor: FrontEndConfigs.kWhiteColor,
              ),
            ),
          ),
          SvgPicture.asset('assets/images/profile.svg'),
          const SizedBox(
            height: 10,
          ),
          const TextWidget(
              text: 'Khsghgg si...', fontSize: 15, fontWeight: FontWeight.w600),
          const SizedBox(
            height: 10,
          ),
          const TextWidget(
              text: '1897676 USDT',
              fontSize: 10,
              textColor: Color(0xffFE0707),
              fontWeight: FontWeight.w400)
        ],
      ),
    );
  }
}
