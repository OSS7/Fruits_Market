import 'package:fleasy/fleasy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../../core/constant/colors.dart';
import '../../../../../core/widgets/custome_buttons.dart';
import '../../../../cart/bloc/cart_bloc.dart';
import '../../../fruits/models/fruit_model.dart';

class FruitDetailsCartButtons extends StatelessWidget {
  final FruitModel fruit;
  const FruitDetailsCartButtons({Key? key, required this.fruit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth * 0.25,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomCircleButton(
            icon: Icons.add,
            color: primaryColor,
            onPressed: () {
              context.read<CartBloc>().add(AddToCart(fruit: fruit));
            },
          ),
          BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              if (state is CartUpdate) {
                final fruitCartItem = state.cart
                    .firstWhereOrNull((item) => item.fruit.id == fruit.id);
                final fruitQuantity = fruitCartItem?.quantity ?? 0;

                return Text(
                  '$fruitQuantity Kg',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                );
              }
              return const Text(
                '0 Kg',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              );
            },
          ),
          CustomCircleButton(
            icon: Icons.remove,
            color: Colors.grey,
            onPressed: () {
              context.read<CartBloc>().add(IncreaseQuantityCart(id: fruit.id));
              // handle minus button press
            },
          ),
        ],
      ),
    );
  }
}
