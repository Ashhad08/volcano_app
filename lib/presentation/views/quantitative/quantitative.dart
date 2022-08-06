import 'package:flutter/material.dart';

import '../../../configurations/font_end.dart';
import 'layout/body.dart';
import 'layout/widgets/custom_rolling_switch.dart';
import 'layout/widgets/title_pop_up_button.dart';

class QuantitativeView extends StatelessWidget {
  const QuantitativeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: FrontEndConfigs.kWhiteColor,
        elevation: 0,
        title: const TitlePopUpButton(),
        actions: const [
          CustomRollingSwitch(),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: const QuantitativeViewBody(),
    );
  }
}
