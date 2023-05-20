import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_market/features/cart/bloc/cart_bloc.dart';
import 'package:get/get.dart';

import '../../../../config/size_config.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/constant/routes.dart';
import '../models/fruit_model.dart';

class FruitsItemCard extends StatefulWidget {
  final FruitModel fruit;
  const FruitsItemCard({Key? key, required this.fruit}) : super(key: key);

  @override
  State<FruitsItemCard> createState() => _FruitsItemCardState();
}

class _FruitsItemCardState extends State<FruitsItemCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(MyRoutes.FRUIT_DETAILS, arguments: [widget.fruit.id]);
      },
      child: Container(
        height: SizeConfig.defaultSize! * 26,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            boxShadow: [_boxShadow],
            color: whiteColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(20.0),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                widget.fruit.imageUrl,
                fit: BoxFit.contain,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.fruit.name,
                          style: _nameStyle,
                        ),
                        Text(
                          'Sugar ${widget.fruit.sugarPercentage}',
                          style: _colStyle,
                        ),
                        Text(
                          '\$${widget.fruit.price}',
                          style: _priceStyle,
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context
                          .read<CartBloc>()
                          .add(AddToCart(fruit: widget.fruit));
                    },
                    child: Container(
                      width: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [primaryColor, primaryColor.withOpacity(0.5)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Icon(
                        Icons.add,
                        color: whiteColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  final TextStyle _nameStyle =
      const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  final TextStyle _colStyle = TextStyle(
      fontSize: 10,
      color: Colors.grey.withOpacity(0.8),
      fontWeight: FontWeight.bold);
  final TextStyle _priceStyle =
      TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: primaryColor);
  final _boxShadow = BoxShadow(
    color: Colors.black12.withOpacity(0.05),
    blurRadius: 20.0, // soften the shadow
    spreadRadius: 0.005, //extend the shadow
    offset: Offset.fromDirection(
      0.0, // Move to right 10  horizontally
      0.0, // Move to bottom 10 Vertically
    ),
  );
}
