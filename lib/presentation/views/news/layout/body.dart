import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:volcano_app/configurations/font_end.dart';
import 'package:volcano_app/presentation/elements/Text_widget.dart';
import 'package:volcano_app/presentation/views/comments/comments.dart';
import 'package:volcano_app/presentation/views/home_view/layout/widgets/membership_activation_dialog.dart';
import 'package:volcano_app/presentation/views/likes/likes.dart';

import 'widgets/option_column.dart';

class NewsViewBody extends StatelessWidget {
  const NewsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfigs.kWhiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Divider(),
          const SizedBox(
            height: 18,
          ),
          Container(
            width: double.infinity,
            padding:
                const EdgeInsets.only(top: 25, left: 25, right: 25, bottom: 40),
            margin: const EdgeInsets.symmetric(horizontal: 18),
            decoration: BoxDecoration(
                color: FrontEndConfigs.kWhiteColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [FrontEndConfigs.kDropShadow]),
            child: Row(
              children: [
                OptionColumn(
                    imagePath: "assets/images/like.png",
                    text: "Like",
                    onPressed: () {
                      Get.to(const LikesView());
                    }),
                const SizedBox(
                  width: 10,
                ),
                OptionColumn(
                    imagePath: "assets/images/comments.png",
                    text: "Comment",
                    onPressed: () {
                      Get.to(const CommentsView());
                    }),
                const SizedBox(
                  width: 10,
                ),
                OptionColumn(
                    imagePath: "assets/images/group_chat.png",
                    text: "Group Chat",
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const MemberShipActivationDialog();
                          });
                    }),
              ],
            ),
          ),
          const Spacer(),
          Column(
            children: [
              SvgPicture.asset(
                "assets/images/no_records.svg",
                color: const Color(0xff575756),
              ),
              const TextWidget(
                text: "No records",
                fontSize: 14,
                fontWeight: FontWeight.w600,
                textColor: Color(0xff575756),
              )
            ],
          ),
          const Spacer()
        ],
      ),
    );
  }
}
