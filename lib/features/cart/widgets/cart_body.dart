import 'package:flutter/material.dart';

import 'cart_app_bar.dart';
import 'cart_item.dart';

class CartBody extends StatelessWidget {
  const CartBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CartAppBar(),
        Expanded(
          child: Column(
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
      ],
    );
  }
}
