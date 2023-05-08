import 'package:fleasy/fleasy.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String? name;
  final int? quantity;
  const CartItem({Key? key, this.name, this.quantity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      margin: const EdgeInsets.symmetric(
        vertical: 6,
        horizontal: 14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: context.screenWidth * 0.1,
            height: context.screenHeight * 0.1,
            child: Image.asset('assets/fruits/${name?.toLowerCase()}.png'),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name ?? '',
                style: _nameStyle,
              ),
              Text(
                '\$${quantity! * 3}',
                style: _priceStyle,
              ),
              Text(
                'x$quantity',
                style: _quantityStyle,
              ),
            ],
          ),
          const Spacer(),
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.1),
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
        ],
      ),
    );
  }
}

const TextStyle _nameStyle = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w300,
);
const TextStyle _quantityStyle = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.bold,
);
final TextStyle _priceStyle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.bold,
  color: Colors.grey.withOpacity(0.8),
);
