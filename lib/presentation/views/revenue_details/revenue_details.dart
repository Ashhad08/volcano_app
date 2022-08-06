import 'package:flutter/material.dart';

import 'layout/body.dart';

class RevenueDetailsView extends StatelessWidget {
  const RevenueDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RevenueDetailsViewBody(),
    );
  }
}
