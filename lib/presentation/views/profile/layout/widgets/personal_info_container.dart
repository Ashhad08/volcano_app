import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../configurations/font_end.dart';
import '../../../../elements/Text_widget.dart';
import '../../../personal_information/personal_information.dart';

class PersonalInfoContainer extends StatelessWidget {
  const PersonalInfoContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 50),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color(0xff1251B2),
            Color(0xff114CA6),
            Color(0xff092959),
          ])),
      child: Column(
        children: [
          ListTile(
              onTap: () {
                Get.to(const PersonalInformationView());
              },
              leading: SvgPicture.asset(
                'assets/images/profile.svg',
                height: 60,
                width: 60,
                fit: BoxFit.fitHeight,
              ),
              title: Row(
                children: const [
                  TextWidget(
                    text: '9g45ytgf',
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                    textColor: FrontEndConfigs.kWhiteColor,
                  ),
                ],
              ),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const TextWidget(
                    text: 'ID:  myemail@gmail.com',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    textColor: FrontEndConfigs.kWhiteColor,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SvgPicture.asset(
                    'assets/icons/eye_open.svg',
                    height: 12,
                    width: 20,
                    color: FrontEndConfigs.kWhiteColor,
                  )
                ],
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: FrontEndConfigs.kWhiteColor,
              )),
          const Spacer(),
          const SizedBox(height: 15),
          Container(
            width: 264,
            height: 50,
            padding: const EdgeInsets.only(left: 20, right: 8),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                color: Color(0xffFFF711)),
            child: Row(
              children: [
                const TextWidget(
                  text: 'VIP',
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  textColor: Color(0xff1251B2),
                ),
                const Spacer(),
                const TextWidget(
                  text: 'View Permission',
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  textColor: Color(0xff1251B2),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: FrontEndConfigs.kWhiteColor,
                      borderRadius: BorderRadius.circular(12)),
                  child: const TextWidget(
                    text: 'Activate',
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    textColor: Color(0xff1251B2),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
