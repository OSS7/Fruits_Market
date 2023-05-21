part of 'fruits_bloc.dart';

@immutable
abstract class FruitsState {}

class FruitsInitial extends FruitsState {}

class FavoriteFruitsUpdate extends FruitsState {
  final List<FruitModel> fruits;

  FavoriteFruitsUpdate({required this.fruits});
}

class AllFruitsUpdate extends FruitsState {
  final List<FruitModel> fruits;

  AllFruitsUpdate({required this.fruits});
}
