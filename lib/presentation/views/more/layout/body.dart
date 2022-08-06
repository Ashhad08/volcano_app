import 'package:flutter/material.dart';

import 'package:volcano_app/configurations/font_end.dart';

import '../../../elements/Text_widget.dart';
import 'widgets/commonly_used_items_card.dart';
import 'widgets/more_items_card.dart';

class MoreViewBody extends StatelessWidget {
  const MoreViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfigs.kWhiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(
              color: Color(0xff707070),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  TextWidget(
                      text: "Most commonly Used",
                      fontSize: 19,
                      fontWeight: FontWeight.w600),
                  SizedBox(
                    height: 16,
                  ),
                  CommonlyUsedItemsCard(
                    addMoreButton: false,
                  ),
                  SizedBox(
                    height: 55,
                  ),
                  TextWidget(
                      text: "More", fontSize: 19, fontWeight: FontWeight.w600),
                  SizedBox(
                    height: 16,
                  ),
                  MoreItemsCard(),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
