import 'package:flutter/material.dart';
import 'package:volcano_app/configurations/font_end.dart';

import '../../../elements/Text_widget.dart';
import 'widgets/confirm_button.dart';
import 'widgets/my_text_field.dart';

class BalanceReminderViewBody extends StatelessWidget {
  const BalanceReminderViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfigs.kWhiteColor,
      body: Column(
        children: [
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 32, left: 24, right: 41),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextWidget(
                    text: "Reminder Limit",
                    fontSize: 19,
                    fontWeight: FontWeight.w600),
                const SizedBox(
                  height: 10,
                ),
                const MyTextField(),
                const SizedBox(
                  height: 44,
                ),
                ConfirmButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            backgroundColor: Colors.transparent,
                            child: Container(
                              height: 45,
                              width: 300,
                              alignment: Alignment.center,
                              color: FrontEndConfigs.kWhiteColor,
                              child: const TextWidget(
                                text: "Registered Successfully",
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                textColor: Color(0xff707070),
                              ),
                            ),
                          );
                        });
                  },
                  text: 'Confirm',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
