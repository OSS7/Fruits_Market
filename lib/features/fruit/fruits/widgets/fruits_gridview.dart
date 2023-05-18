import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../models/fruit_model.dart';
import 'fruits_item_card.dart';

class FruitsGridView extends StatefulWidget {
  const FruitsGridView({Key? key}) : super(key: key);

  @override
  State<FruitsGridView> createState() => _FruitsGridViewState();
}

class _FruitsGridViewState extends State<FruitsGridView> {
  List<FruitModel> fruits = [
    FruitModel(
        id: '1',
        name: 'Ananas',
        image: 'ananas',
        col: '24',
        price: '0.99',
        rating: '5'),
    FruitModel(
        id: '2',
        name: 'Banane',
        image: 'Banane',
        col: '50',
        price: '1.99',
        rating: '3'),
    FruitModel(
        id: '3',
        name: 'Orange',
        image: 'Orange',
        col: '30',
        price: '5.99',
        rating: '4'),
    FruitModel(
        id: '4',
        name: 'Kiwi',
        image: 'Kiwi',
        col: '33',
        price: '5.99',
        rating: '1'),
    FruitModel(
        id: '5',
        name: 'Grenade',
        image: 'Grenade',
        col: '55',
        price: '2.99',
        rating: '3')
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: StaggeredGrid.count(
        crossAxisCount: 2,
        children: fruits
            .map((e) => FruitsItemCard(
                  fruit: e,
                ))
            .toList(),
      ),
    );
  }
}
