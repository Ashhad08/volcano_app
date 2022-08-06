import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:volcano_app/configurations/font_end.dart';import 'package:volcano_app/presentation/views/balance_reminder/layout/widgets/my_text_field.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfigs.kWhiteColor,
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: const Color(0xff8E8C8C).withOpacity(0.26),
              alignment: Alignment.bottomCenter,
              child: Container(
                color: FrontEndConfigs.kWhiteColor,
                padding: const EdgeInsets.only(
                    left: 6, top: 20, bottom: 24, right: 7),
                child: Row(
                  children: [
                    const Expanded(child: MyTextField()),
                    const SizedBox(
                      width: 6,
                    ),
                    SvgPicture.asset("assets/icons/smile_emoji.svg"),
                    const SizedBox(
                      width: 7,
                    ),
                    SvgPicture.asset("assets/icons/add_file_chat.svg"),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
