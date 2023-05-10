import 'package:fleasy/fleasy.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';

class CartItem extends StatelessWidget {
  final String? name;
  final int? quantity;
  const CartItem({Key? key, this.name, this.quantity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight * 0.15,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      margin: const EdgeInsets.symmetric(
        vertical: 14,
        horizontal: 14,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: _borderRadius,
        boxShadow: [
          _boxShadow
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: context.screenWidth * 0.2,
            child: Image.asset('assets/fruits/${name?.toLowerCase()}.png'),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                name ?? '',
                style: _nameStyle,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2,horizontal: 8),
                decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    )),
                child: Text(
                  '$quantity Kg',
                  style: _quantityStyle,
                ),
              )
            ],
          ),
          const Spacer(),
          Padding(
            // width: context.screenWidth * 0.2,
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    // color: Colors.blue.withOpacity(0.1),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.close,
                      color: Colors.grey,
                      size: 15,
                    ),
                  ),
                ),
                Text(
                  '\$${quantity! * 3}',
                  style: _priceStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const TextStyle _nameStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
);
const TextStyle _quantityStyle = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.bold,
);
final TextStyle _priceStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  color: blackColor,
);
final _boxShadow = BoxShadow(
  color: Colors.grey.withOpacity(0.2),
  blurRadius: 10.0,
  spreadRadius: 0.5,
  offset: Offset.fromDirection(
    2.0,
    4.0,
  ),
);
const _borderRadius = BorderRadius.all(
  Radius.circular(25),
);
