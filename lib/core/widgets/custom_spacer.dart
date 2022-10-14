import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/sized_config.dart';

class VerticalSpacer extends StatelessWidget {
  const VerticalSpacer(this.value);

  final double? value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizedConfig.defaultSize! * value!,
    );
  }
}

class HorizontalSpacer extends StatelessWidget {
  const HorizontalSpacer(this.value);

  final double? value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizedConfig.defaultSize! * value!,
    );
  }
}
