import 'package:flutter/material.dart';

import '../../../../core/constant/colors.dart';

class FruitDetailsAppBar extends StatelessWidget {
  FruitDetailsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: _iconBorder,
              color: whiteColor,
            ),
            width: 50,
            child: Center(
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 30,
                  color: darkColor,
                  // fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: _iconBorder,
              color: whiteColor,
            ),
            width: 50,
            height: 50,
            child: IconButton(
              onPressed: () {
                //todo: add the item to favorite.
              },
              icon: Icon(
                Icons.favorite_border_sharp,
                size: 30,
                color: logoColor,
                // fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  final _iconBorder = Border.all(
    color: secondaryColor.withOpacity(0.2),
    width: 0.1,
  );
}
