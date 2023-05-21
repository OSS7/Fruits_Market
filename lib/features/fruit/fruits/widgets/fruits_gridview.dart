import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fruits_market/features/fruit/fruits/bloc/fruits_bloc.dart';

import '../models/fruit_model.dart';
import 'fruits_item_card.dart';

class FruitsGridView extends StatefulWidget {
  final bool isSaved;

  FruitsGridView({Key? key, required this.isSaved}) : super(key: key);

  @override
  State<FruitsGridView> createState() => _FruitsGridViewState();
}

class _FruitsGridViewState extends State<FruitsGridView> {
  int opacityValue = 0;

  @override
  Widget build(BuildContext context) {
    final fruits = context.read<FruitsBloc>().fruits;

    return AnimatedOpacity(
      duration: const Duration(seconds: 2),
      opacity: opacityValue == 0 ? 1 : 0,
      child: BlocBuilder<FruitsBloc, FruitsState>(
        builder: (context, state) {
          List<FruitModel> displayedFruits = [];

          if (state is FavoriteFruitsUpdate && widget.isSaved) {
            displayedFruits = state.fruits;
          } else if (state is AllFruitsUpdate && !widget.isSaved) {
            displayedFruits = state.fruits;
          } else if (!widget.isSaved) {
            displayedFruits = fruits;
          }

          return SizedBox(
            child: StaggeredGrid.count(
              crossAxisCount: 2,
              children:
                  displayedFruits.map((e) => FruitsItemCard(fruit: e)).toList(),
            ),
          );
        },
      ),
    );
  }
}
