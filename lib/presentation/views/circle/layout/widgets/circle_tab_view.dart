import 'package:flutter/material.dart';

import 'circle_info_card.dart';
import 'my_text_field.dart';
import 'options_row.dart';

class CircleTabView extends StatelessWidget {
  const CircleTabView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              children: [
                const MyTextField(),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 240,
                  padding: const EdgeInsets.only(bottom: 50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/Image 7.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                const OptionsRow()
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const CircleInfoCard(
            imagePath: 'assets/images/circle_official.png',
            title: 'QQ Circle',
            peoples: 182879,
            message: 'No. 1 CIRCLE in VolcanoQ 61k Synced member...',
          ),
          const SizedBox(
            height: 12,
          ),
          const CircleInfoCard(
            imagePath: 'assets/images/auto_trader.png',
            title: 'AutoTrader',
            peoples: 35993,
            message: 'Managed by professional & Experienced...……...',
          ),
          const SizedBox(
            height: 12,
          ),
          const CircleInfoCard(
            imagePath: 'assets/images/ai_bot.png',
            title: 'AI Bot',
            peoples: 47302,
            message: 'Fastest Profit Maker...…………………….',
          ),
          const SizedBox(
            height: 12,
          ),
          const CircleInfoCard(
            imagePath: 'assets/images/q_q.png',
            title: 'Q-Q Robo',
            peoples: 35993,
            message: 'Managed by professional & Experienced...……...',
          ),
          const SizedBox(
            height: 12,
          ),
          const CircleInfoCard(
            imagePath: 'assets/images/auto_sultan.png',
            title: 'Autosultan',
            peoples: 35993,
            message: 'Managed by professional & Experienced...……...',
          ),
          const SizedBox(
            height: 12,
          ),
          const CircleInfoCard(
            imagePath: 'assets/images/volcano_circle.png',
            title: 'Volcano+',
            peoples: 35993,
            message: 'Managed by professional & Experienced...……...',
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
