import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:volcano_app/presentation/elements/Text_widget.dart';

import '../../../../../configurations/font_end.dart';

class MenuView extends StatelessWidget {
  const MenuView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.705,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff1251B2),
            Color(0xff092959),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40, top: 37),
          child: Column(
            children: [
              ListTile(
                onTap: () {},
                leading: const TextWidget(
                  text: "Home",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  textColor: FrontEndConfigs.kWhiteColor,
                ),
                trailing: SvgPicture.asset("assets/icons/arrow_forward.svg",
                    color: const Color(0xff0FFF711)),
              ),
              const SizedBox(
                height: 40,
              ),
              ListTile(
                onTap: () {},
                leading: const TextWidget(
                  text: "QUANTITATIVE ADVANTAGE",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  textColor: FrontEndConfigs.kWhiteColor,
                ),
                trailing: SvgPicture.asset("assets/icons/arrow_forward.svg",
                    color: const Color(0xff0fff711)),
              ),
              const SizedBox(
                height: 40,
              ),
              ListTile(
                onTap: () {},
                leading: const TextWidget(
                  text: "APP DOWNLOAD",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  textColor: FrontEndConfigs.kWhiteColor,
                ),
                trailing: SvgPicture.asset("assets/icons/arrow_forward.svg",
                    color: const Color(0xff0FFF711)),
              ),
            ],
          ),
        ));
  }
}
