import 'package:flutter/material.dart';

import 'layout/body.dart';

class DepositView extends StatelessWidget {
  const DepositView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DepositViewBody(),
    );
  }
}
