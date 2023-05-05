import 'package:fleasy/fleasy.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/colors.dart';

class FruitDetailsFruitImage extends StatelessWidget {
  const FruitDetailsFruitImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Container(
        width: double.infinity,
        height: context.screenHeight * 0.32,
        color: lightColor,
        child: Center(
          child: Image.asset('assets/fruits/ananas.png'),
        ),
      ),
    );
  }
}
