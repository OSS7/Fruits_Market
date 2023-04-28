import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_text_field.dart';
import 'fruits_app_bar.dart';
import 'fruits_search_box.dart';
import 'fruits_type_bar.dart';

class FruitsBody extends StatelessWidget {
  const FruitsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          FruitsAppBar(),
          FruitsSearchBoxField(
            controller: TextEditingController(),
          ),
          FruitsTypeBar(),
          Spacer(),
          // Expanded(child: child)
        ],
      ),
    );
  }
}
