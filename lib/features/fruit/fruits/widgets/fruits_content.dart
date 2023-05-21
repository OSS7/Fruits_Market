import 'package:flutter/material.dart';

import 'fruits_gridview.dart';
import 'fruits_type_bar.dart';

class FruitsContent extends StatefulWidget {
  const FruitsContent({Key? key}) : super(key: key);

  @override
  State<FruitsContent> createState() => _FruitsContentState();
}

class _FruitsContentState extends State<FruitsContent> {
  bool isSaved = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FruitsTypeBar(
          onTapSaved: () {
            setState(() {
              isSaved = true;
            });
          },
          onTapAll: () {
            setState(() {
              isSaved = false;
            });
          },
        ),
        FruitsGridView(
          isSaved: isSaved,
        ),
      ],
    );
  }
}
