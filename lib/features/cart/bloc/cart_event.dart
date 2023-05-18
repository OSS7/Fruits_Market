part of 'cart_bloc.dart';

@immutable
abstract class CartEvent {}

class AddToCart extends CartEvent {
  final FruitModel fruit;

  AddToCart({required this.fruit});
}

class RemoveFromCart extends CartEvent {
  final String id;

  RemoveFromCart({required this.id});
}
