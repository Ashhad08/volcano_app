import 'package:flutter/material.dart';
import 'package:volcano_app/configurations/font_end.dart';

import 'widgets/announcement.dart';

class LatestAnnouncementViewBody extends StatelessWidget {
  const LatestAnnouncementViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfigs.kWhiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Announcement(
              onPressed: () {},
              announcementText: 'Account Security Update',
              date: '2022-07-19',
            ),
            Announcement(
              onPressed: () {},
              announcementText: 'Look Out for Scammers',
              date: '2022-07-13',
            ),
            Announcement(
              onPressed: () {},
              announcementText: 'Account Security Update Details',
              date: '2022-07-21',
            ),
            Announcement(
              onPressed: () {},
              announcementText: 'More Investing Choices ',
              date: '2022-07-14',
            ),
            Announcement(
              onPressed: () {},
              date: '2022-07-14',
              announcementText:
                  'Modify the mailbox/password/transaction password related matters',
            ),
            Announcement(
              onPressed: () {},
              date: '2022-06-13',
              announcementText: 'Circle owners, let\'s start posting!',
            ),
            Announcement(
              onPressed: () {},
              announcementText: 'Difference between fuel fee and RP',
              date: '2022-06-09',
            ),
            Announcement(
              onPressed: () {},
              date: '2022-05-23',
              announcementText: 'V6 Bonus assessment suspended',
            ),
            Announcement(
              onPressed: () {},
              announcementText: 'Online customer service time adjustment',
              date: '2022-05-17',
            ),
            Announcement(
              onPressed: () {},
              announcementText: 'Scamming website warning',
              date: '2022-04-20',
            ),
          ],
        ),
      ),
    );
  }
}
