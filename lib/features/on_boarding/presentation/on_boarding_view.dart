import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/sized_config.dart';
import 'package:fruits_market/features/on_boarding/widgets/on_boarding_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizedConfig().init(context);
    return Scaffold(
      body: OnBoardingBody(),
    );
  }
}
