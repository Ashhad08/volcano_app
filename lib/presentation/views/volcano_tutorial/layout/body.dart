import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:volcano_app/configurations/font_end.dart';
import 'package:volcano_app/presentation/elements/Text_widget.dart';

import 'widgets/menu.dart';
import 'widgets/videos_section.dart';

class VolcanoTutorialViewBody extends StatefulWidget {
  const VolcanoTutorialViewBody({
    Key? key,
  }) : super(key: key);

  @override
  State<VolcanoTutorialViewBody> createState() =>
      _VolcanoTutorialViewBodyState();
}

class _VolcanoTutorialViewBodyState extends State<VolcanoTutorialViewBody> {
  bool openMenu = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfigs.kWhiteColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 50, left: 20, bottom: 58, right: 20),
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xff1251B2),
                  Color(0xff092959),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
              child: Row(
                children: [
                  Image.asset("assets/icons/volcano.png"),
                  const SizedBox(
                    width: 6,
                  ),
                  const TextWidget(
                    text: "VOLCANO",
                    fontSize: 21,
                    fontWeight: FontWeight.w400,
                    textColor: Color(0xffEAC35E),
                  ),
                  const Spacer(),
                  SvgPicture.asset("assets/icons/world.svg"),
                  const SizedBox(
                    width: 9,
                  ),
                  const TextWidget(
                    text: "ENGLISH",
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    textColor: FrontEndConfigs.kWhiteColor,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  SvgPicture.asset("assets/icons/drop_down.svg"),
                  const SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        openMenu = !openMenu;
                      });
                    },
                    child: openMenu
                        ? SvgPicture.asset(
                            "assets/icons/cross.svg",
                            height: 20,
                            width: 20,
                            color: const Color(0xff0FFF711),
                          )
                        : SvgPicture.asset("assets/icons/menu.svg"),
                  ),
                ],
              ),
            ),
            openMenu ? const MenuView() : const VideosSection()
          ],
        ),
      ),
    );
  }
}
