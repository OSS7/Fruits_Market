import 'package:flutter/material.dart';
import 'package:fruits_market/core/constant/colors.dart';

class FruitDetailsFruitData extends StatelessWidget {
  const FruitDetailsFruitData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: logoColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text('4.0'),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.local_fire_department_outlined,
                    color: Colors.red,
                  ),
                  Text('80 cal'),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.phonelink_ring_outlined,
                    color: Colors.orange,
                  ),
                  Text('Fri 8 dec'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
