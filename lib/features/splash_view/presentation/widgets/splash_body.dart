import 'package:flutter/material.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Spacer(),
          const Text(
            'Fruits Marker',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
          Spacer(),
          Image.asset('assets/images/splash_view_image.png'),
        ],
      ),
    );
  }
}
