import 'package:flutter/material.dart';
import 'package:fruits_market/features/fruit/fruits/widgets/fruits_gridview.dart';
import 'package:get/get.dart';

import '../../fruits/models/fruit_model.dart';
import 'fruit_details_app_bar.dart';
import 'fruit_details_bottom.dart';
import 'fruit_details_fruit_data.dart';
import 'fruit_details_fruit_image.dart';

class FruitDetailsBody extends StatelessWidget {
  const FruitDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arg = Get.arguments;
    final id = arg[0];
    FruitModel fruit = fruits.firstWhere((element) => element.id == id);

    return Column(
      children: [
        Stack(
          children: [
            FruitDetailsFruitImage(
              image: fruit.imageUrl,
            ),
            FruitDetailsAppBar(),
          ],
        ),
        Expanded(
          child: FruitDetailsFruitData(
            fruit: fruit,
          ),
        ),
        // Spacer(),
        FruitDetailsBottom(
          price: fruit.price,
        ),
      ],
    );
  }
}
