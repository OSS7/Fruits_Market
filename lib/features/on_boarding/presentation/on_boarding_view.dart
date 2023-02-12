import 'package:doc_widget_annotation/doc_widget_annotation.dart';
import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/sized_config.dart';
import 'package:fruits_market/features/on_boarding/widgets/on_boarding_body.dart';


@docWidget
class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizedConfig().init(context);
    return const Scaffold(
      body: OnBoardingBody(),
    );
  }
}
