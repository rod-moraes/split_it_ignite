import 'package:flutter/material.dart';
import 'package:split_it_ignite/core/core.dart';

class SplashController {
  void redirectSplash(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));

    Navigator.pushNamedAndRemoveUntil(
        context, RouterClass.login, (Route<dynamic> route) => false);
  }
}
