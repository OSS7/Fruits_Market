import 'package:flutter/material.dart';

import '../../../../../core/constant/colors.dart';

class FavoriteIcon extends StatelessWidget {
  final bool isFavorite;

  const FavoriteIcon({Key? key, required this.isFavorite}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.favorite,
      color: isFavorite ? primaryColor : Colors.grey,
    );
  }
}
