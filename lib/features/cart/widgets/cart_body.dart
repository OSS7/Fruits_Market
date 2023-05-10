import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';
import 'cart_app_bar.dart';
import 'cart_item.dart';

class CartBody extends StatelessWidget {
  const CartBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CartAppBar(),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: const [
              CartItem(
                name: 'Ananas',
                quantity: 5,
              ),
              CartItem(
                name: 'Orange',
                quantity: 7,
              ),
              CartItem(
                name: 'Kiwi',
                quantity: 7,
              ),
              CartItem(
                name: 'Banane',
                quantity: 3,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: _borderRadius,
            boxShadow: [_boxShadow],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: const [
                  Text(
                    'total price',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    '\$63.25',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [primaryColor, primaryColor.withOpacity(0.5)],
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        'Check out',
                        style: TextStyle(color: whiteColor),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.arrow_forward_ios_sharp, color: whiteColor),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
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
