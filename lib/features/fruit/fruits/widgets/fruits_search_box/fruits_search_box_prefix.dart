import 'package:flutter/material.dart';

import '../../../../../core/constant/icons_paths.dart';
import '../../../../../core/widgets/custom_icon.dart';

class FruitsSearchBoxPrefix extends StatelessWidget {
  final Function()? onPress;
  const FruitsSearchBoxPrefix({Key? key, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 3,
        vertical: 3,
      ),
      width: 40,
      child: InkWell(
        onTap: onPress,
        child: CustomIcon(
          MyIcons.search,
          color: Colors.black,
          size: 25,
        ),
      ),
    );
  }
}
