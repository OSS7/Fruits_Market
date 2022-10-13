import 'package:flutter/material.dart';
import 'package:fruits_market/features/splash_view/presentation/splash_view.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const FruitsMarket());
}

class FruitsMarket extends StatelessWidget {
  const FruitsMarket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashView(),
    );
  }
}
