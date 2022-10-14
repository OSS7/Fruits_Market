import 'package:flutter/material.dart';
import 'package:fruits_market/features/on_boarding/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key, required this.pageController}) : super(key: key);
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        PageViewItem(
          lottie: 'assets/lottie/world.json',
          title: 'Anywhere You are',
          subtitle: 'Your order will be in your hand by minutes',
        ),
        PageViewItem(
          lottie: 'assets/lottie/like.json',
          title: 'E-Shopping',
          subtitle: 'Explore top fruits && grab them',
        ),
        PageViewItem(
          lottie: 'assets/lottie/delivery.json',
          title: 'Delivery on the way',
          subtitle: 'Get your order by speed delivery',
        ),
        ],
    );
  }
}
