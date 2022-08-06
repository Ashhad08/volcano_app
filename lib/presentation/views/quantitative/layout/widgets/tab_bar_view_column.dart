import 'package:flutter/material.dart';

import '../../../../elements/Text_widget.dart';
import 'records_container.dart';

class TabBarViewColumn extends StatelessWidget {
  const TabBarViewColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.54,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 16,
                ),
                const TextWidget(
                    text: "Default / Vol",
                    fontSize: 12,
                    textColor: Color(0xff707070),
                    fontWeight: FontWeight.w400),
                const Spacer(),
                const TextWidget(
                    text: "Price",
                    fontSize: 12,
                    textColor: Color(0xff707070),
                    fontWeight: FontWeight.w400),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(Icons.arrow_drop_up),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                const TextWidget(
                    text: "/Chg",
                    fontSize: 12,
                    textColor: Color(0xff707070),
                    fontWeight: FontWeight.w400),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(Icons.arrow_drop_up),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                const Spacer(),
                const TextWidget(
                    text: "Price",
                    fontSize: 12,
                    textColor: Color(0xff707070),
                    fontWeight: FontWeight.w400),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(Icons.arrow_drop_up),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                const TextWidget(
                    text: "/Return Rate",
                    fontSize: 12,
                    textColor: Color(0xff707070),
                    fontWeight: FontWeight.w400),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(Icons.arrow_drop_up),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            const RecordsContainer(),
            const SizedBox(
              height: 20,
            ),
            const RecordsContainer(),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: const [
                  TextWidget(
                      text: "Binance: Please binding API before\nstart trade",
                      fontSize: 12,
                      align: TextAlign.start,
                      textColor: Color(0xffFE0707),
                      fontWeight: FontWeight.w600),
                  Spacer(),
                  TextWidget(
                      text: "Bind",
                      fontSize: 12,
                      textColor: Color(0xffFE0707),
                      fontWeight: FontWeight.w600)
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
