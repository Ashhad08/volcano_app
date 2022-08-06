import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:volcano_app/configurations/font_end.dart';
import 'package:volcano_app/presentation/views/asset/asset.dart';
import 'package:volcano_app/presentation/views/home_view/layout/widgets/membership_activation_dialog.dart';
import 'package:volcano_app/presentation/views/more/more.dart';
import 'package:volcano_app/presentation/views/revenue_details/revenue_details.dart';
import 'package:volcano_app/presentation/views/volcano_tutorial/volcano_tutorial.dart';

import '../../../reward_details/reward_details.dart';
import '../../../user_guide/user_guide.dart';
import 'sections_column.dart';

class CommonlyUsedItemsCard extends StatelessWidget {
  const CommonlyUsedItemsCard({
    Key? key,
    required this.addMoreButton,
  }) : super(key: key);
  final bool addMoreButton;

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
                  title: 'API Binding',
                  imagePath: 'assets/icons/api_binding.svg',
                  onPressed: () {},
                ),
                SectionsColumn(
                  title: 'Revenue',
                  imagePath: 'assets/icons/revenue.svg',
                  onPressed: () {
                    Get.to(const RevenueDetailsView());
                  },
                ),
                SectionsColumn(
                  title: 'Reward',
                  imagePath: 'assets/icons/reward.svg',
                  onPressed: () {
                    Get.to(const RewardDetailsView());
                  },
                ),
                SectionsColumn(
                  title: 'Asset',
                  imagePath: 'assets/icons/asset.svg',
                  onPressed: () {
                    Get.to(const AssetView());
                  },
                ),
                SectionsColumn(
                  title: 'Invite Friend',
                  imagePath: 'assets/icons/invite_friends.svg',
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const MemberShipActivationDialog();
                        });
                  },
                ),
                SectionsColumn(
                  title: 'Quantitative',
                  imagePath: 'assets/icons/youtube.svg',
                  onPressed: () {
                    Get.to(const VolcanoTutorialView());
                  },
                ),
                SectionsColumn(
                  title: 'User Guide',
                  imagePath: 'assets/icons/user_guide.svg',
                  onPressed: () {
                    Get.to(const UserGuideView());
                  },
                ),
                addMoreButton
                    ? SectionsColumn(
                        title: 'More',
                        imagePath: 'assets/icons/more.svg',
                        onPressed: () {
                          Get.to(const MoreView());
                        },
                      )
                    : SizedBox()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
