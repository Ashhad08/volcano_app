import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:volcano_app/configurations/font_end.dart';

import '../../../elements/Text_widget.dart';
import '../../balance_reminder/layout/widgets/confirm_button.dart';

class MyStrategySettingViewBody extends StatelessWidget {
  const MyStrategySettingViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfigs.kWhiteColor,
      body: Column(
        children: [
          const Divider(
            height: 0,
          ),
          const SizedBox(
            height: 120,
          ),
          Column(
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
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: ConfirmButton(
              onPressed: () {},
              text: 'Add it now',
              radius: 22,
            ),
          )
        ],
      ),
    );
  }
}
