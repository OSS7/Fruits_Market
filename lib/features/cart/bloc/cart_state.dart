part of 'cart_bloc.dart';

@immutable
abstract class CartState {}

class CartInitial extends CartState {}

class CartUpdate extends CartState {
  final List<CartModel> cart;

  CartUpdate({required this.cart});
}
