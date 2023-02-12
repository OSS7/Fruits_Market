import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/themes/theme_provider.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon(this.path, {super.key, this.size, this.color, this.originalColor});

  final String path;
  final double? size;
  final Color? color;
  final bool? originalColor;

  @override
  Widget build(BuildContext context) {
    final customColor = ThemeProvider();

    return SvgPicture.asset(
      path,
      color: (originalColor??false)? null : color ?? customColor.secondary,
      height: size ?? 30,
      width: size ?? 30,
    );
  }
}
