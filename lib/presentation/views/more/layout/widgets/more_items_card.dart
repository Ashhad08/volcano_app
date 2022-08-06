import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:volcano_app/configurations/font_end.dart';
import 'package:volcano_app/presentation/views/chat/chat.dart';
import 'package:volcano_app/presentation/views/circle_owners_income_details/circle_owners_income_details.dart';
import 'package:volcano_app/presentation/views/membership/membership.dart';
import 'package:volcano_app/presentation/views/sync_strat/sync_strat.dart';

import '../../../../elements/Text_widget.dart';
import 'sections_column.dart';
import 'want_to_chat_dialog.dart';

class MoreItemsCard extends StatelessWidget {
  const MoreItemsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 13, left: 18, right: 20, bottom: 30),
      decoration: BoxDecoration(
          color: FrontEndConfigs.kWhiteColor,
          borderRadius: BorderRadius.circular(19),
          boxShadow: [FrontEndConfigs.kDropShadow]),
      child: Row(
        children: [
          Expanded(
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.end,
              runAlignment: WrapAlignment.spaceEvenly,
              spacing: 5,
              runSpacing: 20,
              children: [
                SectionsColumn(
                  title: 'Membership',
                  imagePath: 'assets/icons/membership.svg',
                  onPressed: () {
                    Get.to(const MemberShipView());
                  },
                ),
                SectionsColumn(
                  title: 'Circle owner',
                  imagePath: 'assets/icons/circle_owner.svg',
                  onPressed: () {
                    Get.to(const CircleOwnersIncomeDetailsView());
                  },
                ),
                SectionsColumn(
                  title: 'Sync Strat',
                  imagePath: 'assets/icons/sync_chat.svg',
                  onPressed: () {
                    Get.to(const SyncStratView());
                  },
                ),
                const SizedBox(
                  width: 80,
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const WantToChatDialog();
                        });
                  },
                  child: SizedBox(
                    width: 90,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          "assets/icons/councelor.png",
                          height: 40,
                          width: 40,
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        const TextWidget(
                            text: "My Councelor",
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


