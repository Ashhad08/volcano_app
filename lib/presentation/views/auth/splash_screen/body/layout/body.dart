import 'package:flutter/material.dart';
import 'package:volcano_app/presentation/elements/Text_widget.dart';

import '../../../../../../configurations/font_end.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/splash.png",
            ),
            fit: BoxFit.fill),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/icons/splashicon.png",
            height: 132,
          ),
          const SizedBox(
            height: 12,
          ),
          const TextWidget(
              text: "VOLCANO Q",
              fontSize: 30,
              fontWeight: FontWeight.w400,
              textColor: FrontEndConfigs.kAuthScreenColor),
          const SizedBox(
            height: 8,
          ),
          const TextWidget(
              text: "Smart Quantitative trading platform",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              textColor: FrontEndConfigs.kWhiteColor),
        ],
      ),
    );
  }
}
