import 'package:flutter/material.dart';

import '../../../../core/constant/assets_paths.dart';
import '../../../../core/constant/colors.dart';

class FruitsAppBar extends StatelessWidget {
  const FruitsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: _appBarPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 80  ,
            child: Image.asset(
              MyAssets.LOGO,
              fit: BoxFit.cover,
              color: darkColor,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: _cartIconBorder,
              color: whiteColor,
              shape: BoxShape.circle,
            ),
            width: 50,
            height: 50,
            child: IconButton(
              onPressed: () {
                ///todo: go to cart screen.
              },
              icon: Icon(
                Icons.shopping_cart_rounded,
                size: 30,
                color: primaryColor,
                // fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const _appBarPadding = EdgeInsets.all(8);
final _cartIconBorder = Border.all(
  color: secondaryColor.withOpacity(0.2),
  width: 0.1,
);
