import 'package:flutter/material.dart';

import 'fruit_details_app_bar.dart';
import 'fruit_details_bottom.dart';
import 'fruit_details_fruit_data.dart';
import 'fruit_details_fruit_image.dart';

class FruitDetailsBody extends StatelessWidget {
  const FruitDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            const FruitDetailsFruitImage(),
            FruitDetailsAppBar(),
          ],
        ),
        const Expanded(
          child: FruitDetailsFruitData(),
        ),
        // Spacer(),
        const FruitDetailsBottom(),
      ],
    );
  }
}
