import 'package:flutter/material.dart';

import '../../../../../configurations/font_end.dart';
import '../../../../elements/Text_widget.dart';

class PopUpButtonRounded extends StatefulWidget {
  const PopUpButtonRounded({Key? key}) : super(key: key);

  @override
  State<PopUpButtonRounded> createState() => _PopUpButtonRoundedState();
}

class _PopUpButtonRoundedState extends State<PopUpButtonRounded> {
  final List<String> textList = [
    "All",
    "Cycle",
    "One-shot",
    "Stop marging Call"
  ];
  late String _currentItemSelected = 'All';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
          color: const Color(0xffE9E9E9),
          borderRadius: BorderRadius.circular(27)),
      child: PopupMenuButton<String>(
        position: PopupMenuPosition.under,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
        itemBuilder: (context) {
          return textList.map((val) {
            return PopupMenuItem(
              value: val,
              padding: EdgeInsets.zero,
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextWidget(
                        text: val, fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Divider(),
                ],
              ),
            );
          }).toList();
        },
        child: Row(
          children: [
            TextWidget(
                text: _currentItemSelected,
                fontSize: 18,
                fontWeight: FontWeight.w600),
            const Icon(
              Icons.arrow_drop_down_sharp,
              color: FrontEndConfigs.kBlackColor,
              size: 25,
            )
          ],
        ),
        onSelected: (value) {
          setState(() {
            _currentItemSelected = value;
          });
        },
      ),
    );
  }
}
