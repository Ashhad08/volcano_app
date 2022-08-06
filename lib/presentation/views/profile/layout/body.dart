import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:volcano_app/configurations/font_end.dart';
import 'package:volcano_app/presentation/views/home_view/layout/widgets/membership_activation_dialog.dart';

import '../../my_strategy_setting/my_strategy_setting.dart';
import 'widgets/attention_dialog.dart';
import 'widgets/personal_info_container.dart';
import 'widgets/setting_list_tile.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfigs.kWhiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PersonalInfoContainer(),
            SettingListTile(
              leadingImagePath: 'assets/images/prof_ed.png',
              title: 'Professional Edition',
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return const AttentionDialog();
                    });
              },
              trailingIcon: CupertinoSwitch(
                value: false,
                trackColor: const Color(0xffDBDBD1),
                thumbColor: const Color(0xff575756),
                onChanged: (bool value) {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return const AttentionDialog();
                      });
                },
              ),
            ),
            SettingListTile(
                leadingImagePath: 'assets/images/member_center.png',
                title: 'Member Centre',
                onPressed: () {}),
            SettingListTile(
                leadingImagePath: 'assets/images/assets.png',
                title: 'Asset',
                onPressed: () {}),
            SettingListTile(
                leadingImagePath: 'assets/images/api_bind.png',
                title: 'API Binding',
                onPressed: () {}),
            SettingListTile(
                leadingImagePath: 'assets/images/team.png',
                title: 'Team',
                onPressed: () {}),
            SettingListTile(
                leadingImagePath: 'assets/images/reward.png',
                title: 'Reward details',
                onPressed: () {}),
            SettingListTile(
                leadingImagePath: 'assets/images/circle_owner.png',
                title: 'Circle owners income detail',
                onPressed: () {}),
            SettingListTile(
                leadingImagePath: 'assets/images/synchronization.png',
                title: 'My synchroniz strategy',
                onPressed: () {}),
            SettingListTile(
                leadingImagePath: 'assets/images/settings.png',
                title: 'My strategy Setting',
                onPressed: () {
                  Get.to(const MyStrategySettingView());
                }),
            SettingListTile(
                leadingImagePath: 'assets/images/share.png',
                title: 'Share',
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return const MemberShipActivationDialog();
                      });
                })
          ],
        ),
      ),
    );
  }
}
