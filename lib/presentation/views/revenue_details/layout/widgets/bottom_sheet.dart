import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../configurations/font_end.dart';
import '../../../../elements/Text_widget.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 527,
      padding: const EdgeInsets.only(top: 28, left: 25, right: 10),
      decoration: const BoxDecoration(
        color: FrontEndConfigs.kWhiteColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(23)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextWidget(
            text: "Share",
            fontSize: 25,
            fontWeight: FontWeight.w600,
            textColor: Color(0xff439756),
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 300,
            child: GridView.count(
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              children: [
                Column(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/facebook.svg",
                    ),
                    const TextWidget(
                        text: "Facebook",
                        fontSize: 18,
                        fontWeight: FontWeight.w600)
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset("assets/icons/whatsapp.svg"),
                    const TextWidget(
                        text: "Whats app",
                        fontSize: 18,
                        fontWeight: FontWeight.w600)
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset("assets/icons/gallery.svg"),
                    const TextWidget(
                        text: "Gallery",
                        fontSize: 18,
                        fontWeight: FontWeight.w600)
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset("assets/icons/twitter.svg"),
                    const TextWidget(
                        text: "Twitter",
                        fontSize: 18,
                        fontWeight: FontWeight.w600)
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
