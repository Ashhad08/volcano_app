import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:volcano_app/configurations/font_end.dart';

import '../../../elements/Text_widget.dart';

class CommentsViewBody extends StatelessWidget {
  const CommentsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfigs.kWhiteColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color(0xffF1F1E7),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/no_records.svg",
              color: const Color(0xff575756),
            ),
            const TextWidget(
              text: "No records",
              fontSize: 14,
              fontWeight: FontWeight.w600,
              textColor: Color(0xff575756),
            )
          ],
        ),
      ),
    );
  }
}
