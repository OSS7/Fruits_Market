import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_market/core/constant/colors.dart';
import 'package:fruits_market/core/constant/routes.dart';
import 'package:fruits_market/features/cart/bloc/cart_bloc.dart';
import 'package:get/get.dart';

import '../../fruits/models/fruit_model.dart';

class FruitDetailsBottom extends StatelessWidget {
  final FruitModel fruit;

  const FruitDetailsBottom({Key? key, required this.fruit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      color: whiteColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const Text(
                'Total price',
                style: TextStyle(color: Colors.grey, fontSize: 8),
              ),
              BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  if (state is CartUpdate) {
                    final cartItem = state.cart.firstWhereOrNull(
                      (element) => element.fruit.id == fruit.id,
                    );
                    final totalPrice = (cartItem?.quantity ?? 0) * fruit.price;
                    return Text(
                      '${totalPrice.toStringAsFixed(2)}\$',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    );
                  }

                  return SizedBox();
                },
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 4,
            ),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              gradient: LinearGradient(
                colors: [primaryColor, primaryColor.withOpacity(0.5)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: TextButton(
              onPressed: () {
                Get.offAllNamed(MyRoutes.CART);
              },
              child: const Text(
                'Go to cart',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
