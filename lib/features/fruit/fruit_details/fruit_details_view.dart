import 'package:flutter/material.dart';

import 'widgets/fruit_details_body.dart';

class FruitDetailsView extends StatelessWidget {
  const FruitDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: FruitDetailsBody(),
      ),
    );
  }
}
