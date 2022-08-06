import 'package:flutter/material.dart';
import 'package:volcano_app/configurations/font_end.dart';
import 'package:volcano_app/presentation/elements/Text_widget.dart';
import 'package:volcano_app/presentation/views/quantitative/layout/widgets/my_tab_bar.dart';

import 'widgets/pop_up_button_rounded.dart';
import 'widgets/search_bar.dart';
import 'widgets/tab_bar_view_column.dart';

class QuantitativeViewBody extends StatelessWidget {
  const QuantitativeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: FrontEndConfigs.kWhiteColor,
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 25,
            ),
            const SearchBar(),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 10),
                    color: const Color(0xffDCDEE4),
                    child: const TextWidget(
                      text: "General",
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      textColor: Color(0xff1251B2),
                    ),
                  ),
                  const Spacer(),
                  const PopUpButtonRounded(),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const MyTabBar(),
            const Divider(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.54,
              child: const TabBarView(
                physics: BouncingScrollPhysics(),
                children: [
                  TabBarViewColumn(),
                  TabBarViewColumn(),
                  TabBarViewColumn(),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
