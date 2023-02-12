import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_market/core/constant/colors.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({Key? key, this.dotIndex}) : super(key: key);
  final double? dotIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: dotIndex!,
      decorator: DotsDecorator(
        activeColor: kMainColor,
      ),
    );
  }
}
