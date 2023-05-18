import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/cart_bloc.dart';
import 'cart_item.dart';

class CartItems extends StatelessWidget {
  const CartItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        if (state is CartUpdate) {
          return Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: state.cart.length,
              itemBuilder: (context, index) {
                final cartItem = state.cart[index];

                return CartItem(
                  fruit: cartItem.fruit,
                  quantity: cartItem.quantity,
                );
              },
            ),
          );
        }
        return SizedBox();
      },
    );
  }
}
