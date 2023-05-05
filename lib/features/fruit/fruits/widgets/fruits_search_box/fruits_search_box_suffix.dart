import 'package:flutter/material.dart';

class FruitsSearchBoxSuffix extends StatelessWidget {
  final Function()? onPress;
  const FruitsSearchBoxSuffix({Key? key, this.onPress}) : super(key: key);

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
        child: const Icon(
          Icons.filter_alt_outlined,
          color: Colors.black,
          size: 25,
        ),
      ),
    );
  }
}
