import 'package:flutter/material.dart';
import 'package:volcano_app/configurations/font_end.dart';
import 'package:volcano_app/presentation/elements/Text_widget.dart';

import '../../../balance_reminder/layout/widgets/confirm_button.dart';
import 'confirm_bottom_sheet.dart';

class OperationRemainderCard extends StatelessWidget {
  const OperationRemainderCard({
    Key? key,
    required this.description,
  }) : super(key: key);
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(top: 16, right: 6, left: 19, bottom: 13),
        decoration: BoxDecoration(
            color: FrontEndConfigs.kWhiteColor,
            boxShadow: [
              FrontEndConfigs.kInnerShadow,
              FrontEndConfigs.kDropShadow
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextWidget(
                text: "Operation reminder",
                fontSize: 19,
                fontWeight: FontWeight.w600),
            const SizedBox(
              height: 18,
            ),
            TextWidget(
                text: description,
                fontSize: 14,
                align: TextAlign.left,
                fontWeight: FontWeight.w600),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3, right: 15),
              child: ConfirmButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const ConfirmBottomSheet();
                      });
                },
                text: 'Confirm',
              ),
            )
          ],
        ));
  }
}
