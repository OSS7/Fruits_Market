import 'package:fruits_market/features/fruit/fruits/models/fruit_model.dart';

class CartModel {
  final FruitModel fruit;
  late int quantity;

  CartModel({required this.fruit, required this.quantity});
}
