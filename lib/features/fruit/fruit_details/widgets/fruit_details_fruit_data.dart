import 'package:fleasy/fleasy.dart';
import 'package:flutter/material.dart';
import 'package:fruits_market/core/constant/colors.dart';

import '../../../../core/widgets/custome_buttons.dart';
import 'fruit_details_fruit_data/fruit_details_fruit_data_description.dart';

class FruitDetailsFruitData extends StatelessWidget {
  const FruitDetailsFruitData({Key? key}) : super(key: key);

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
                  children: const [
                    RowIcon(
                      title: '4.0',
                      icon: Icons.star,
                      color: Colors.yellow,
                    ),
                    RowIcon(
                      title: '80 cal',
                      icon: Icons.local_fire_department_outlined,
                      color: Colors.red,
                    ),
                    RowIcon(
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
                    const Expanded(
                      child: Text(
                        'Anans',
                        style: _fruitTitle,
                      ),
                    ),
                    SizedBox(
                      width: context.screenWidth * 0.25,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomCircleButton(
                            icon: Icons.add,
                            color: primaryColor,
                            onPressed: () {
                              // handle plus button press
                            },
                          ),
                          const Text(
                            '1 Kg',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          CustomCircleButton(
                            icon: Icons.remove,
                            color: Colors.grey,
                            onPressed: () {
                              // handle minus button press
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            FruitDetailsFruitDataDescription(),
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
