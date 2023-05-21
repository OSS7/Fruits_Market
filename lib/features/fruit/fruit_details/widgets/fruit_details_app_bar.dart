import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_market/features/fruit/fruits/bloc/fruits_bloc.dart';

import '../../../../core/constant/colors.dart';
import '../../fruits/models/fruit_model.dart';
import 'fruit_details_fruit_data/fruit_details_app_bar_saved_icon.dart';

class FruitDetailsAppBar extends StatefulWidget {
  final FruitModel fruit;

  FruitDetailsAppBar({Key? key, required this.fruit}) : super(key: key);

  @override
  State<FruitDetailsAppBar> createState() => _FruitDetailsAppBarState();
}

class _FruitDetailsAppBarState extends State<FruitDetailsAppBar> {
  bool isSaved = false;

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
            child: BlocBuilder<FruitsBloc, FruitsState>(
              builder: (context, state) {
                if (state is FavoriteFruitsUpdate) {
                  isSaved = state.fruits.contains(widget.fruit);
                }
                return IconButton(
                  onPressed: () {
                    context.read<FruitsBloc>().add(
                          isSaved
                              ? RemoveFromFavorite(id: widget.fruit.id)
                              : AddToFavorite(fruit: widget.fruit),
                        );
                  },
                  icon: FavoriteIcon(
                    isFavorite: isSaved,
                  ),
                );
              },
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
