import 'package:flutter/material.dart';
import 'package:fruits_market/features/splash_view/presentation/widgets/splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade700,
      body: Container(
        child: SplashBody(),
      ),
    );
  }
}
