import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login_view/login_view.dart';
import 'body/layout/body.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(const Duration(seconds: 10), () {
      Get.to(const LoginView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}
