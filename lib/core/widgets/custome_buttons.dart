import 'package:flutter/material.dart';
import 'package:fruits_market/core/constant/colors.dart';
import 'package:fruits_market/core/utils/sized_config.dart';

class CustomGeneralButton extends StatelessWidget {
  final String? text;
  final Function()? onPress;
  const CustomGeneralButton({Key? key, this.text, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 50,
        width: SizedConfig.screenWidth,
        decoration: BoxDecoration(
          color: kMainColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Center(
          child: Text(
            text!,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon({Key? key, this.text, this.icon, this.iconColor, this.onPress}) : super(key: key);
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
        width: SizedConfig.screenWidth,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade800
          ),
          color: Colors.transparent,
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text!,style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),),
            Icon(icon!,color: iconColor ,),
          ],
        ),
      ),
    );
  }
}
