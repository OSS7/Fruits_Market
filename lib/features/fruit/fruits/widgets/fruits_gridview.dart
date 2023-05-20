import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../models/fruit_model.dart';
import 'fruits_item_card.dart';

List<FruitModel> fruits = [
  FruitModel(
    id: '1',
    name: "Apple",
    description:
        "Apples are one of the most popular fruits around the world. They come in various colors, such as red, green, and yellow. Apples have a crunchy texture and a slightly sweet and tangy flavor. They are a great source of dietary fiber, antioxidants, and vitamin C. Apples can be enjoyed on their own, used in baking delicious pies, or turned into refreshing apple juice.",
    color: "Red",
    price: 1.99,
    imageUrl: "assets/fruits/apple.png",
    sugarPercentage: 10.5,
  ),
  FruitModel(
    id: '2',
    name: "Banana",
    description:
        "Bananas are elongated, curved fruits with a vibrant yellow peel when ripe. They have a soft, creamy texture and a naturally sweet taste. Bananas are a fantastic source of potassium, vitamin C, and vitamin B6. They make a convenient and nutritious snack, and they can also be used in smoothies, baking, or as a topping for cereal and yogurt.",
    color: "Yellow",
    price: 0.99,
    imageUrl: "assets/fruits/banana.png",
    sugarPercentage: 17.2,
  ),
  FruitModel(
    id: '3',
    name: "Orange",
    description:
        "Oranges are citrus fruits known for their bright orange color and refreshing, tangy taste. They are packed with vitamin C, which is essential for a healthy immune system. Oranges also contain dietary fiber and various beneficial antioxidants. These fruits can be enjoyed as a juicy snack, squeezed into fresh orange juice, or used in a variety of recipes, including salads and desserts.",
    color: "Orange",
    price: 0.79,
    imageUrl: "assets/fruits/orange.png",
    sugarPercentage: 8.7,
  ),
  FruitModel(
    id: '4',
    name: "Grapes",
    description:
        "Grapes are small, juicy berries that come in a variety of colors, including red, green, and purple. They are often used for making wine. Grapes are packed with antioxidants, vitamins, and minerals. They can be enjoyed fresh as a snack, added to salads, or used in desserts.",
    color: "Purple",
    price: 2.49,
    imageUrl: "assets/fruits/grapes.png",
    sugarPercentage: 16.8,
  ),
  FruitModel(
    id: '5',
    name: "Strawberry",
    description:
        "Strawberries are small, red fruits with seeds on their outer surface. They have a sweet and slightly tangy flavor. Strawberries are rich in vitamin C, antioxidants, and fiber. They can be enjoyed on their own, added to salads, used in smoothies, or as a topping for desserts like cakes and ice cream.",
    color: "Red",
    price: 3.99,
    imageUrl: "assets/fruits/strawberry.png",
    sugarPercentage: 7.2,
  ),
  FruitModel(
    id: '6',
    name: "Watermelon",
    description:
        "Watermelon is a large fruit with a green rind and juicy, sweet red flesh. It is incredibly hydrating and refreshing, especially during hot summer days. Watermelon is rich in vitamins A and C and contains a high water content, which helps with hydration. It is commonly enjoyed as a sliced fruit, in fruit salads, or blended into refreshing beverages.",
    color: "Green",
    price: 4.99,
    imageUrl: "assets/fruits/watermelon.png",
    sugarPercentage: 6.2,
  ),
  FruitModel(
    id: '7',
    name: "Pineapple",
    description:
        "Pineapple is a tropical FruitModel with a tough, spiky exterior and sweet, yellow flesh. It has a refreshing and tangy flavor that adds a tropical twist to dishes. Pineapple is an excellent source of vitamin C, manganese, and bromelain, an enzyme with various health benefits. It can be enjoyed fresh, added to fruit salads, used in smoothies, or grilled for a delicious dessert.",
    color: "Yellow",
    price: 2.99,
    imageUrl: "assets/fruits/pineapple.png",
    sugarPercentage: 9.8,
  ),
  FruitModel(
    id: '8',
    name: "Mango",
    description:
        "Mango is a juicy fruit with a smooth, yellow or orange skin and a sweet-tart flavor. It is often referred to as the 'king of fruits.' Mangoes are rich in vitamins A and C and contain dietary fiber. They can be eaten fresh, blended into smoothies, used in fruit salsas, or added to both sweet and savory dishes for a tropical touch.",
    color: "Yellow",
    price: 1.79,
    imageUrl: "assets/fruits/mango.png",
    sugarPercentage: 14.8,
  ),
  FruitModel(
    id: '9',
    name: "Pear",
    description:
        "Pears are sweet fruits with a rounded shape and a thin skin. They come in various colors, including green, red, and yellow. Pears have a smooth and juicy texture with a mildly sweet flavor. They are a good source of dietary fiber, vitamin C, and antioxidants. Pears can be enjoyed fresh, used in salads, or baked into delicious desserts like pies and tarts.",
    color: "Green",
    price: 1.49,
    imageUrl: "assets/fruits/pear.png",
    sugarPercentage: 10.1,
  ),
];

class FruitsGridView extends StatefulWidget {
  const FruitsGridView({Key? key}) : super(key: key);

  @override
  State<FruitsGridView> createState() => _FruitsGridViewState();
}

class _FruitsGridViewState extends State<FruitsGridView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: StaggeredGrid.count(
        crossAxisCount: 2,
        children: fruits
            .map((e) => FruitsItemCard(
                  fruit: e,
                ))
            .toList(),
      ),
    );
  }
}
