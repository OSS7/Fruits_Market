import 'package:flutter/material.dart';

import '../../../../core/constant/colors.dart';

class FruitDetailsAppBar extends StatelessWidget {
  const FruitDetailsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: secondaryColor.withOpacity(0.2), width: 0.1),
                  color: whiteColor,
                  borderRadius: const BorderRadius.all(Radius.circular(50))),
              width: 50,
              height: 50,
              child: Center(
                child: IconButton(
                  onPressed: () {
                    // Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 30,
                    color: darkColor,
                    // fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: secondaryColor.withOpacity(0.2), width: 0.1),
                  color: whiteColor,
                  borderRadius: const BorderRadius.all(Radius.circular(50))),
              width: 50,
              height: 50,
              child: IconButton(
                onPressed: () {
                  // Scaffold.of(context).openDrawer();
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
      ),
    );
  }
}
