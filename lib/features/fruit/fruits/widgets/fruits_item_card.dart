import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../config/size_config.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/constant/routes.dart';

class FruitsItemCard extends StatefulWidget {
  final String fruit;
  const FruitsItemCard({Key? key, required this.fruit}) : super(key: key);

  @override
  State<FruitsItemCard> createState() => _FruitsItemCardState();
}

class _FruitsItemCardState extends State<FruitsItemCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(MyRoutes.FRUIT_DETAILS);
      },
      child: Container(
        height: SizeConfig.defaultSize! * 26,
      margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            boxShadow: [_boxShadow],
            color: whiteColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(20.0),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                'assets/fruits/${widget.fruit.toLowerCase()}.png',
                fit: BoxFit.contain,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.fruit,
                          style: _nameStyle,
                        ),
                        Text(
                          'Col 50',
                          style: _colStyle,
                        ),
                        Text(
                          '\$14.25',
                          style: _priceStyle,
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [Colors.orange[800]!, Colors.orange[500]!],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  final TextStyle _nameStyle =
      const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  final TextStyle _colStyle = TextStyle(
      fontSize: 10,
      color: Colors.grey.withOpacity(0.8),
      fontWeight: FontWeight.bold);
  final TextStyle _priceStyle =
      TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: logoColor);
  final _boxShadow = BoxShadow(
    color: Colors.black12.withOpacity(0.05),
    blurRadius: 20.0, // soften the shadow
    spreadRadius: 0.005, //extend the shadow
    offset: Offset.fromDirection(
      0.0, // Move to right 10  horizontally
      0.0, // Move to bottom 10 Vertically
    ),
  );
}
