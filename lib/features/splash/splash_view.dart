import 'package:flutter/material.dart';
import 'package:fruits_market/core/constant/colors.dart';
import 'package:fruits_market/features/splash/widgets/splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: const SplashBody(),
    );
  }
}
