import 'package:flutter/material.dart';
import 'package:volcano_app/configurations/font_end.dart';
import 'package:volcano_app/presentation/elements/Text_widget.dart';

import '../../../../elements/app_button.dart';
import '../../../../elements/auth_text_field.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  ForgotPasswordViewBody({Key? key}) : super(key: key);
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const TextWidget(
                text: "Email",
                fontSize: 20,
                fontWeight: FontWeight.w600,
                textColor: FrontEndConfigs.kBlackColor),
            const SizedBox(
              height: 10,
            ),
            AuthTextField(
                hintText: "ni**@**.com",
                validator: (val) {},
                controller: _controller),
            const SizedBox(
              height: 12,
            ),
            AppButton(
              name: "Send",
              onTapped: () {},
              width: MediaQuery.of(context).size.width,
              height: 60,
              borderRadius: 15,
              showBorder: true,
              textColor: FrontEndConfigs.kAppButtonColor,
              textSize: 18,
              fontWeight: FontWeight.w600,
            ),
            const SizedBox(
              height: 30,
            ),
            const TextWidget(
              text: "Email Verification Code",
              fontSize: 20,
              fontWeight: FontWeight.w600,
              textColor: FrontEndConfigs.kAppButtonColor,
            ),
            const SizedBox(
              height: 15,
            ),
            AuthTextField(
                hintText: "Please enter the verification code",
                validator: (val) {},
                controller: _controller2),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: TextWidget(
                text: "Security Verification is not available?",
                fontSize: 12,
                fontWeight: FontWeight.w600,
                textColor: FrontEndConfigs.kAppButtonColor,
              ),
            ),
            const SizedBox(
              height: 29,
            ),
            AppButton(
              name: "Confirm",
              onTapped: () {},
              width: MediaQuery.of(context).size.width,
              height: 60,
              buttonColor: Color(0xff919190),
              borderRadius: 15,
              textSize: 18,
              fontWeight: FontWeight.w600,
            ),
            Center(
                child: Image.asset(
              "assets/images/forgot.png",
              height: 200,
            )),
          ],
        ),
      ),
    );
  }
}
