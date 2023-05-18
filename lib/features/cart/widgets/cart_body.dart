import 'package:flutter/material.dart';
import 'package:fruits_market/features/cart/widgets/cart_footer.dart';

import '../../../core/constant/colors.dart';
import 'cart_app_bar.dart';
import 'cart_item.dart';
import 'cart_items.dart';

class CartBody extends StatelessWidget {
  const CartBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CartAppBar(),
        CartItems(),
        CartFooter(),
      ],
    );
  }
}
