import 'package:flutter/material.dart';

import '../../../../core/constant/colors.dart';

class FruitsTypeBar extends StatefulWidget {
  const FruitsTypeBar({Key? key}) : super(key: key);

  @override
  State<FruitsTypeBar> createState() => _FruitsTypeBarState();
}

class _FruitsTypeBarState extends State<FruitsTypeBar> {
  var _chosen = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                setState(() {
                  _chosen = index;
                });
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                // width: 60,
                height: 30,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AnimatedDefaultTextStyle(
                        child: Text(
                          'Fruits $index',
                        ),
                        style: index == _chosen ? _chosenStyle : _normalStyle,
                        duration: Duration(milliseconds: 200)),
                    Visibility(
                      visible: _chosen == index,
                      child: Container(
                        height: 3,
                        width: 30,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }

  final TextStyle _normalStyle = TextStyle(
      fontSize: 14,
      color: darkColor.withOpacity(0.4),
      fontWeight: FontWeight.bold);

  final TextStyle _chosenStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: darkColor);
}
