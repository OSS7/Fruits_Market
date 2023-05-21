import 'package:flutter/material.dart';
import 'package:fruits_market/config/size_config.dart';

import 'fruits_app_bar.dart';
import 'fruits_content.dart';
import 'fruits_search_box.dart';

class FruitsBody extends StatelessWidget {
  const FruitsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return const Padding(
      padding: _fruitsPadding,
      child: Column(
        children: [
          FruitsAppBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  FruitsSearchBoxField(),
                  FruitsContent(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const _fruitsPadding = EdgeInsets.symmetric(
  horizontal: 8.0,
);
