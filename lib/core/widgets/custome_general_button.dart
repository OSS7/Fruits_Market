import 'package:flutter/material.dart';
import 'package:fruits_market/core/constant.dart';
import 'package:fruits_market/core/utils/sized_config.dart';

class CustomGeneralButton extends StatelessWidget {
  final String? text;

  const CustomGeneralButton({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
