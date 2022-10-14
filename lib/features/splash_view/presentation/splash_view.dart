import 'package:flutter/material.dart';
import 'package:fruits_market/core/constant.dart';
import 'package:fruits_market/features/splash_view/widgets/splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: Container(
        child: SplashBody(),
      ),
    );
  }
}
