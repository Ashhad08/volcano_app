import 'package:flutter/material.dart';

import 'layout/body.dart';

class AssetView extends StatelessWidget {
  const AssetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AssetViewBody(),
    );
  }
}
