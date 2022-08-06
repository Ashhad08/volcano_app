import 'package:flutter/material.dart';

import '../../../../../configurations/font_end.dart';
import '../../../../elements/Text_widget.dart';

class TitlePopUpButton extends StatefulWidget {
  const TitlePopUpButton({Key? key}) : super(key: key);

  @override
  State<TitlePopUpButton> createState() => _TitlePopUpButtonState();
}

class _TitlePopUpButtonState extends State<TitlePopUpButton> {
  final List<String> textList = ["Binance", "Huobi", "Coinbase Pro"];
  late String _currentItemSelected = 'Binance';

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      position: PopupMenuPosition.under,
      padding: EdgeInsets.zero,
      itemBuilder: (context) {
        return textList.map((val) {
          return PopupMenuItem(
            value: val,
            padding: EdgeInsets.zero,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextWidget(
                        text: val, fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Divider(),
                ],
              ),
            ),
          );
        }).toList();
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextWidget(
              text: _currentItemSelected,
              fontSize: 20,
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
    );
  }
}
