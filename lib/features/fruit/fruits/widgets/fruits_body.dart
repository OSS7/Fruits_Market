import 'package:flutter/material.dart';
import 'package:fruits_market/config/size_config.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_text_field.dart';
import 'fruits_app_bar.dart';
import 'fruits_gridview.dart';
import 'fruits_search_box.dart';
import 'fruits_type_bar.dart';

class FruitsBody extends StatelessWidget {
  const FruitsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const FruitsAppBar(),
            FruitsSearchBoxField(
              controller: TextEditingController(),
            ),
            const FruitsTypeBar(),
            FruitsGridView(), // Expanded(child: child)
          ],
        ),
      ),
    );
  }
}