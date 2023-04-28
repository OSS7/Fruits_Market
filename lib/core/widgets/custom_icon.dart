import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_market/core/constant/colors.dart';

import '../config/themes/theme_provider.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon(this.path, { this.size, this.color, this.originalColor});

  final String path;
  final double? size;
  final Color? color;
  final bool? originalColor;

  @override
  Widget build(BuildContext context) {
    final customColor = ThemeProvider();

    return SvgPicture.asset(
      path,
      color: (originalColor??false)? null : color ?? primaryColor,
      height: size ?? 30,
      width: size ?? 30,
    );
  }
}
