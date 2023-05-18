import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../fruit/fruits/models/fruit_model.dart';
import '../models/cart_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  List<CartModel> cart = [];
  CartBloc() : super(CartInitial()) {
    on<CartEvent>((event, emit) {
      if (event is AddToCart) {
        if (cart
            .where((element) => element.fruit.id == event.fruit.id)
            .isNotEmpty) {
          cart.firstWhere((element) => element.fruit == event.fruit).quantity++;
        } else {
          cart = [...cart, CartModel(fruit: event.fruit, quantity: 1)];
        }
        emit(CartUpdate(cart: cart));
      }
      if (event is RemoveFromCart) {
        cart.removeWhere((element) => element.fruit.id == event.id);
        emit(CartUpdate(cart: cart));
      }
    });
  }
}
