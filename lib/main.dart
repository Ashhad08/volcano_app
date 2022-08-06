import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:volcano_app/presentation/views/auth/splash_screen/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Volcano App',
      home: SplashView(),
    );
  }
}
