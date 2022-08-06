import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:volcano_app/configurations/font_end.dart';

import 'layout/body.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xfffafafa),
        elevation: 0,
        title: const Text(
          "Safety Verificationconst ",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: FrontEndConfigs.kBlackColor,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: FrontEndConfigs.kBlackColor,
          ),
        ),
      ),
      body: ForgotPasswordViewBody(),
    );
  }
}
