part of 'fruits_bloc.dart';

@immutable
abstract class FruitsEvent {}

class AddToFavorite extends FruitsEvent {
  final FruitModel fruit;

  AddToFavorite({required this.fruit});
}

class RemoveFromFavorite extends FruitsEvent {
  final String id;

  RemoveFromFavorite({required this.id});
}

class SearchForAllFruits extends FruitsEvent {
  final String text;

  SearchForAllFruits({required this.text});
}
