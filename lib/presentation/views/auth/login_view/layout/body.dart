import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:volcano_app/presentation/elements/Text_widget.dart';

import '../../../../../configurations/font_end.dart';
import '../../../../elements/app_button.dart';
import '../../../../elements/auth_text_field.dart';
import '../../../bottom_bar/bottom_bar_view.dart';
import '../../forgot_password/forgot_password_view.dart';
import '../../sign_up_view/sign_up_view.dart';

class LoginViewBody extends StatelessWidget {
  LoginViewBody({Key? key}) : super(key: key);
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Image.asset(
                    "assets/icons/splashicon.png",
                    height: 132,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const TextWidget(
                      text: "VOLCANO Q",
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      textColor: FrontEndConfigs.kAuthScreenColor),
                  const SizedBox(
                    height: 80,
                  ),
                  AuthTextField(
                      hintText: "Please Enter account number / email ",
                      validator: (val) {},
                      controller: _emailController),
                  const SizedBox(
                    height: 35,
                  ),
                  AuthTextField(
                      isPasswordField: true,
                      hintText: "Please Enter password ",
                      validator: (val) {},
                      controller: _pwdController),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        Get.to(const ForgotPasswordView());
                      },
                      child: const TextWidget(
                          text: "Forgot Password ",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          textColor: FrontEndConfigs.kBlackColor),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  AppButton(
                    name: "Login",
                    onTapped: () {
                      Get.to(const BottomBar());
                    },
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    buttonColor: FrontEndConfigs.kAppButtonColor,
                    borderRadius: 15,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextWidget(
                          text: "No account yet? ",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          textColor: FrontEndConfigs.kBlackColor),
                      GestureDetector(
                        onTap: () {
                          Get.to(const SignUpView());
                        },
                        child: const TextWidget(
                            text: "Register now",
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            textColor: FrontEndConfigs.kAppButtonColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: Image.asset("assets/images/login.png")),
          ],
        ),
      ),
    );
  }
}
