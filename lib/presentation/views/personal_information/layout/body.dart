import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:volcano_app/configurations/font_end.dart';
import 'package:volcano_app/presentation/elements/Text_widget.dart';
import 'package:volcano_app/presentation/views/personal_information/layout/widgets/info_list_tile.dart';

class PersonalInformationViewBody extends StatelessWidget {
  const PersonalInformationViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfigs.kWhiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(
              height: 0,
            ),
            InfoListTile(
                title: 'Nick name',
                trailingIcon: const TextWidget(
                  text: '9g5jkf7f',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  textColor: Color(0xff575756),
                ),
                onPressed: () {}),
            InfoListTile(
                title: 'UUID',
                trailingIcon: const TextWidget(
                  text: 'sggsghshgshghgshsh',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  textColor: const Color(0xff575756),
                ),
                onPressed: () {}),
            InfoListTile(
                title: 'Avatar',
                trailingIcon: SvgPicture.asset(
                  'assets/icons/profile.svg',
                  height: 20,
                  width: 20,
                  fit: BoxFit.fill,
                  color: FrontEndConfigs.kBlackColor,
                ),
                onPressed: () {}),
            InfoListTile(
                title: 'Email',
                trailingIcon: const TextWidget(
                  text: 'Bound',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  textColor: Color(0xff575756),
                ),
                onPressed: () {}),
            InfoListTile(
                title: 'Location',
                trailingIcon: const TextWidget(
                  text: 'Bound',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  textColor: Color(0xff575756),
                ),
                onPressed: () {}),
            InfoListTile(
                title: 'My Counselor',
                trailingIcon: const TextWidget(
                  text: '65EE76',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  textColor: Color(0xff575756),
                ),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
