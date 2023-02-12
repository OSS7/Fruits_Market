import 'package:flutter/material.dart';

import '../config/size_config.dart';

class VerticalSpacer extends StatelessWidget {
  const VerticalSpacer(this.value);

  final double? value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * value!,
    );
  }
}

class HorizontalSpacer extends StatelessWidget {
  const HorizontalSpacer(this.value);

  final double? value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * value!,
    );
  }
}
