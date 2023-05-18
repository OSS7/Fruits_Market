class FruitModel {
  final String id;
  final String name;
  final String image;
  final String col;
  final String price;
  final String? rating;

  FruitModel(
      {required this.id,
      required this.name,
      required this.image,
      required this.col,
      required this.price,
      this.rating});
}
