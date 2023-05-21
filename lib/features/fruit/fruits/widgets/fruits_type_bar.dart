import 'package:flutter/material.dart';

import '../../../../core/constant/colors.dart';

class FruitsTypeBar extends StatefulWidget {
  final Function() onTapSaved;
  final Function() onTapAll;
  const FruitsTypeBar(
      {Key? key, required this.onTapSaved, required this.onTapAll})
      : super(key: key);

  @override
  State<FruitsTypeBar> createState() => _FruitsTypeBarState();
}

class _FruitsTypeBarState extends State<FruitsTypeBar> {
  List types = ['All', 'Favorites'];
  var _chosen = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: _barMargin,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: types.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                _chosen = index;
                if (index == 1) {
                  widget.onTapSaved();
                } else {
                  widget.onTapAll();
                }
              });
            },
            child: Container(
              margin: _barMargin,
              height: 30,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedDefaultTextStyle(
                      style: index == _chosen ? _chosenStyle : _normalStyle,
                      duration: const Duration(milliseconds: 200),
                      child: Text(
                        types[index],
                      )),
                  Visibility(
                    visible: _chosen == index,
                    child: _bottomBar,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  final _barMargin = const EdgeInsets.all(10);
  final TextStyle _normalStyle = TextStyle(
      fontSize: 14,
      color: darkColor.withOpacity(0.4),
      fontWeight: FontWeight.bold);

  final TextStyle _chosenStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: darkColor);
  final _bottomBar = Container(
    height: 3,
    width: 30,
    decoration: BoxDecoration(
      color: primaryColor,
      borderRadius: const BorderRadius.all(
        Radius.circular(50),
      ),
    ),
  );
}
