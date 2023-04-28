import 'package:flutter/material.dart';

import '../../../../core/constant/colors.dart';

class FruitsTypeBar extends StatelessWidget {
  const FruitsTypeBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              // width: 60,
              height: 30,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Fruits $index',
                    style: index == 0 ? _chosenStyle : _normalStyle,
                  ),
                  Container(
                    height: 3,
                    width: 30,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

final TextStyle _normalStyle =
    TextStyle(fontSize: 17, color: blackColor.withOpacity(0.7));
const TextStyle _chosenStyle =
    TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
