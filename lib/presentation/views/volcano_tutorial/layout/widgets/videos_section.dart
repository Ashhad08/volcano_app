import 'package:flutter/material.dart';
import 'package:volcano_app/presentation/views/volcano_tutorial/layout/widgets/video_player.dart';

class VideosSection extends StatelessWidget {
  const VideosSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 44,
        ),
        VideoPlayer(
          title: 'Volcano operation tutorial',
          color: Color(0xff1251B2),
        ),
        VideoPlayer(
          title: 'What is quantitative trading',
          color: Color(0xff67E22A),
        ),
      ],
    );
  }
}
