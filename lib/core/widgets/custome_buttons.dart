import 'package:flutter/material.dart';
import 'package:fruits_market/core/constant/colors.dart';

import '../../config/size_config.dart';

class CustomGeneralButton extends StatelessWidget {
  final String? text;
  final Function()? onPress;
  const CustomGeneralButton({Key? key, this.text, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 50,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Center(
          child: Text(
            text!,
            style: TextStyle(
              fontSize: 18,
              color: whiteColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon(
      {Key? key, this.text, this.icon, this.iconColor, this.onPress})
      : super(key: key);
  final String? text;
  final IconData? icon;
  final Color? iconColor;
  final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 50,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade800),
          color: Colors.transparent,
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text!,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Icon(
              icon!,
              color: iconColor,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCircleButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  const CustomCircleButton(
      {Key? key,
      required this.icon,
      required this.color,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 25.0,
        height: 25.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        child: Center(
          child: Icon(
            icon,
            color: whiteColor,
            size: 25.0,
          ),
        ),
      ),
    );
  }
}
