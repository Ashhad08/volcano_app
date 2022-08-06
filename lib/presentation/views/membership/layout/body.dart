import 'package:flutter/material.dart';
import 'package:volcano_app/configurations/font_end.dart';
import 'package:volcano_app/presentation/elements/Text_widget.dart';

import 'widgets/clipped_profile_card.dart';
import 'widgets/rights_tiles.dart';
import 'widgets/rules_card.dart';

class MemberShipViewBody extends StatelessWidget {
  const MemberShipViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfigs.kWhiteColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: const [
            ClippedProfileCard(),
            SizedBox(
              height: 30,
            ),
            TextWidget(
                text: "VIP membership rights",
                fontSize: 22,
                fontWeight: FontWeight.w600),
            SizedBox(
              height: 32,
            ),
            RightsTiles(),
            SizedBox(
              height: 60,
            ),
            RulesCard(),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
