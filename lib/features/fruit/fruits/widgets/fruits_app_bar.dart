import 'package:flutter/material.dart';

import '../../../../core/constant/assets_paths.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/constant/icons_paths.dart';
import '../../../../core/widgets/custom_icon.dart';

class FruitsAppBar extends StatelessWidget {
  const FruitsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              // width: 160,
              height: 90,
              child: Image.asset(
                MyAssets.LOGO,
                fit: BoxFit.cover,
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
                icon: CustomIcon(
                  MyIcons.notification,
                  size: 60,
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
