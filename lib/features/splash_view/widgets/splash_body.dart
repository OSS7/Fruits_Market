import 'package:flutter/material.dart';
import 'package:fruits_market/features/on_boarding/presentation/on_boarding_view.dart';
import 'package:get/get.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation? fadingAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: 0.2, end: 1).animate(animationController!);
    animationController?.repeat(reverse: true);
    goToNextView();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Spacer(),
          AnimatedBuilder(
            builder: (context, _) {
              return Opacity(
                opacity: fadingAnimation!.value,
                child: const Text(
                  'Fruits Market',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              );
            },
            animation: fadingAnimation!,
          ),
          const Spacer(),
          Image.asset('assets/images/splash_view_image.png'),
        ],
      ),
    );
  }

  goToNextView() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const OnBoardingView(), transition: Transition.rightToLeft);
    });
  }
}
