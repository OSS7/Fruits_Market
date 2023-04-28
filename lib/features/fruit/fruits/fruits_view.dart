import 'package:flutter/material.dart';

import 'widgets/fruits_body.dart';

class FruitsView extends StatelessWidget {
  const FruitsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: FruitsBody(),
      ),
    );
  }
}
