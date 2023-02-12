import 'package:doc_widget_annotation/doc_widget_annotation.dart';
import 'package:flutter/material.dart';
import 'package:fruits_market/features/on_boarding/widgets/on_boarding_body.dart';

import '../../../core/config/size_config.dart';


@docWidget
class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: OnBoardingBody(),
    );
  }
}
