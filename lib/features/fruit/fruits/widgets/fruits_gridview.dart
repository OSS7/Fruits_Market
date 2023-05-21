import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fruits_market/features/fruit/fruits/bloc/fruits_bloc.dart';

import 'fruits_item_card.dart';

class FruitsGridView extends StatefulWidget {
  final bool isSaved;

  FruitsGridView({Key? key, required this.isSaved}) : super(key: key);

  @override
  State<FruitsGridView> createState() => _FruitsGridViewState();
}

class _FruitsGridViewState extends State<FruitsGridView> {
  @override
  Widget build(BuildContext context) {
    final fruits = context.read<FruitsBloc>().fruits;

    return BlocBuilder<FruitsBloc, FruitsState>(
      builder: (context, state) {
        if (state is FavoriteFruitsUpdate) {
          return SizedBox(
            child: StaggeredGrid.count(
              crossAxisCount: 2,
              children: widget.isSaved
                  ? state.fruits
                      .map((e) => FruitsItemCard(
                            fruit: e,
                          ))
                      .toList()
                  : fruits
                      .map((e) => FruitsItemCard(
                            fruit: e,
                          ))
                      .toList(),
            ),
          );
        }
        if (state is AllFruitsUpdate) {
          return SizedBox(
            child: StaggeredGrid.count(
              crossAxisCount: 2,
              children: state.fruits
                  .map((e) => FruitsItemCard(
                        fruit: e,
                      ))
                  .toList(),
            ),
          );
        }
        return SizedBox(
          child: StaggeredGrid.count(
            crossAxisCount: 2,
            children: widget.isSaved
                ? []
                : fruits
                    .map((e) => FruitsItemCard(
                          fruit: e,
                        ))
                    .toList(),
          ),
        );
      },
    );
  }
}
