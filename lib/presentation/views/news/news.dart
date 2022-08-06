import 'package:flutter/material.dart';
import 'package:volcano_app/presentation/views/more/layout/widgets/want_to_chat_dialog.dart';

import '../../../configurations/font_end.dart';
import '../../elements/Text_widget.dart';
import 'layout/body.dart';

class NewsView extends StatelessWidget {
  const NewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FrontEndConfigs.kWhiteColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: const TextWidget(
            text: "News", fontSize: 24, fontWeight: FontWeight.w600),
        actions: [
          TextButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return const WantToChatDialog();
                  });
            },
            child: const TextWidget(
                text: "My counselor    ",
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
      body: const NewsViewBody(),
    );
  }
}
