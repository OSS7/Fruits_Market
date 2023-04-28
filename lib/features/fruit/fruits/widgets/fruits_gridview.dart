import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'fruits_item_card.dart';

class FruitsGridView extends StatefulWidget {
  const FruitsGridView({Key? key}) : super(key: key);

  @override
  State<FruitsGridView> createState() => _FruitsGridViewState();
}

class _FruitsGridViewState extends State<FruitsGridView> {
  List<String> fruits = [
    'Ananas',
    'Banane',
    'Orange',
    'Kiwi',
    'Grenade',
    'Poire',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: StaggeredGrid.count(
        crossAxisCount: 2,
        children: fruits.map((e) => FruitsItemCard(fruit: e)).toList(),
      ),
    );
  }
}
