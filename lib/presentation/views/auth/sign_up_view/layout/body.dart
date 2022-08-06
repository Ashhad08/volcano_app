import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:volcano_app/presentation/elements/Text_widget.dart';

import '../../../../../configurations/font_end.dart';
import '../../../../elements/app_button.dart';
import '../../../../elements/auth_text_field.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({Key? key}) : super(key: key);

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  bool _bigBox = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: const Icon(Icons.arrow_back_ios),
              ),
              const SizedBox(
                height: 30,
              ),
              const TextWidget(
                  text: "Register",
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  textColor: FrontEndConfigs.kBlackColor),
              const SizedBox(
                height: 8,
              ),
              const TextWidget(
                  text: "Welcome you to join",
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  textColor: FrontEndConfigs.kBlackColor),
              const SizedBox(
                height: 25,
              ),
              AuthTextField(
                hintText: "Select Location",
                validator: (val) {},
                controller: _controller,
                suffix: true,
                icon: Icons.arrow_drop_down_sharp,
              ),
              const SizedBox(
                height: 12,
              ),
              AuthTextField(
                  hintText: "Please Enter Email",
                  validator: (val) {},
                  controller: _emailController),
              const SizedBox(
                height: 12,
              ),
              AuthTextField(
                  hintText: "Set 6-12 digits login password",
                  validator: (val) {},
                  controller: _emailController),
              const SizedBox(
                height: 12,
              ),
              AuthTextField(
                  hintText: "Please Re-enter login password",
                  validator: (val) {},
                  controller: _emailController),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 54,
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      hintText: "Please Enter verification code",
                      suffixText: "Send",
                      suffixStyle: const TextStyle(
                          color: FrontEndConfigs.kAppButtonColor),
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              AuthTextField(
                  hintText: "Please enter invitation code",
                  validator: (val) {},
                  controller: _emailController),
              const SizedBox(
                height: 20,
              ),
              AppButton(
                name: "Register now",
                onTapped: () {},
                width: MediaQuery.of(context).size.width,
                height: 60,
                buttonColor: FrontEndConfigs.kAppButtonColor,
                borderRadius: 15,
              ),
              const SizedBox(
                height: 15,
              ),
              FittedBox(
                child: Row(
                  children: [
                    Checkbox(
                      value: _bigBox,
                      shape: const CircleBorder(),
                      splashRadius: 20,
                      onChanged: (value) {
                        _bigBox = value!;
                        setState(() {});
                      },
                    ),
                    const TextWidget(
                        align: TextAlign.start,
                        text:
                            "I have carefully read the service agreement and \n user privacy policy",
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        textColor: FrontEndConfigs.kBlackColor),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<String> list = [
    "Seleect ",
    "Kohat",
    "Peshawar",
  ];
}
