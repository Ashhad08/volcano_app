import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:volcano_app/presentation/elements/Text_widget.dart';

import '../../../configurations/font_end.dart';
import '../security_log/security_log.dart';
import 'layout/body.dart';
import 'layout/widgets/permission_dialog.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        backgroundColor: FrontEndConfigs.kAppScreenDefColor,
        title: const TextWidget(
            text: "Home",
            fontSize: 20,
            fontWeight: FontWeight.w600,
            textColor: FrontEndConfigs.kBlackColor),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(const SecurityLogView());
              },
              icon: const ImageIcon(
                AssetImage("assets/icons/security_log.png"),
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return const PermissionDialog();
                    });
              },
              icon: const ImageIcon(
                AssetImage(
                  "assets/icons/scan_1.png",
                ),
                color: Colors.black,
              )),
        ],
      ),
      body: const HomeViewBody(),
    );
  }
}
