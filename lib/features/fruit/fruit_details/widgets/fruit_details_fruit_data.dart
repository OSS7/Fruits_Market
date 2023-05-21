import 'package:flutter/material.dart';
import 'package:fruits_market/core/constant/colors.dart';
import 'package:fruits_market/features/fruit/fruits/models/fruit_model.dart';

import 'fruit_details_fruit_data/fruit_details_cart_buttons.dart';
import 'fruit_details_fruit_data/fruit_details_fruit_data_description.dart';

class FruitDetailsFruitData extends StatelessWidget {
  final FruitModel fruit;

  const FruitDetailsFruitData({Key? key, required this.fruit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: _borderRadius,
        boxShadow: [_boxShadow],
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
              width: 100,
              child: Divider(
                thickness: 2,
                color: blackColor,
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const RowIcon(
                      title: '4.0',
                      icon: Icons.star,
                      color: Colors.yellow,
                    ),
                    RowIcon(
                      title: '${fruit.sugarPercentage} sug',
                      icon: Icons.local_fire_department_outlined,
                      color: Colors.red,
                    ),
                    const RowIcon(
                      title: 'Fri 8 dec',
                      icon: Icons.cable_rounded,
                      color: Colors.red,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        fruit.name,
                        style: _fruitTitle,
                      ),
                    ),
                    FruitDetailsCartButtons(fruit: fruit),
                  ],
                ),
              ],
            ),
            FruitDetailsFruitDataDescription(
              description: fruit.description,
            ),
          ],
        ),
      ),
    );
  }
}

final _boxShadow = BoxShadow(
  color: Colors.grey.withOpacity(0.3),
  blurRadius: 20.0,
  spreadRadius: 0.005,
  offset: Offset.fromDirection(
    4.8,
    2.0,
  ),
);
const _borderRadius = BorderRadius.only(
  topLeft: Radius.circular(25),
  topRight: Radius.circular(25),
);
const _fruitTitle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 25,
);

class RowIcon extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final Color? color;

  const RowIcon({Key? key, this.title, this.icon, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 22,
          color: color,
        ),
        Text(title ?? ''),
      ],
    );
  }
}
