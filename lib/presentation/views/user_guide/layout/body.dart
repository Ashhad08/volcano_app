import 'package:flutter/material.dart';
import 'package:volcano_app/configurations/font_end.dart';

import 'widgets/guide.dart';

class UserGuideViewBody extends StatelessWidget {
  const UserGuideViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfigs.kWhiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Guide(
              guideText: 'Coin base pro API binding',
              onPressed: () {},
            ),
            Guide(
              guideText: 'Volcano operation setting instructions ',
              onPressed: () {},
            ),
            Guide(
              guideText: 'How to find my counselor?',
              onPressed: () {},
            ),
            Guide(
              guideText: 'Quantitative trading parameter setting tutorial',
              onPressed: () {},
            ),
            Guide(
              guideText: 'Auto-renewal notice',
              onPressed: () {},
            ),
            Guide(
              guideText: 'Double opening function',
              onPressed: () {},
            ),
            Guide(
              guideText: 'Huobi application API key process',
              onPressed: () {},
            ),
            Guide(
              guideText: 'Instructions for use of sub-warehouse',
              onPressed: () {},
            ),
            Guide(
              guideText: 'Volcano circle document synchronization tutorial',
              onPressed: () {},
            ),
            Guide(
              guideText: 'Description of margin call configuration',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
