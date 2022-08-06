import 'package:flutter/material.dart';

import '../../../../../configurations/font_end.dart';
import '../../../../elements/Text_widget.dart';

class DisplayContainer extends StatelessWidget {
  const DisplayContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 240,
      padding: const EdgeInsets.only(bottom: 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        image: const DecorationImage(
            image: AssetImage("assets/images/Image 7.png"), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          TextWidget(
              text: "USERS PROFIT OVER",
              fontSize: 15,
              textColor: FrontEndConfigs.kWhiteColor,
              fontWeight: FontWeight.bold),
          TextWidget(
              text: "\$115,000,0000",
              fontSize: 29,
              textColor: Color(0xffF1DB16),
              fontWeight: FontWeight.bold),
        ],
      ),
    );
  }
}
