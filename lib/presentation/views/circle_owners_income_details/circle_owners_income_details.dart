import 'package:flutter/material.dart';

import 'layout/body.dart';

class CircleOwnersIncomeDetailsView extends StatelessWidget {
  const CircleOwnersIncomeDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CircleOwnersIncomeDetailsViewBody(),
    );
  }
}
