import 'package:flutter/material.dart';
import 'package:fruits_market/features/on_boarding/widgets/page_view_item.dart';
import 'package:get/get.dart';

import '../../../config/translations/strings.dart';
import '../../../core/constant/assets_paths.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key, required this.pageController})
      : super(key: key);
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          lottie: MyAssets.WORLD_LOTTIE,
          title: Strings.anyWhereYouAre.tr,
          subtitle: Strings.anyWhereYouAreSubtitle.tr,
        ),
        PageViewItem(
          lottie: MyAssets.LIKE_LOTTIE,
          title: Strings.eShopping.tr,
          subtitle: Strings.eShoppingSubtitle.tr,
        ),
        PageViewItem(
          lottie: MyAssets.DELIVERY_LOTTIE,
          title: Strings.deliveryOnWay.tr,
          subtitle: Strings.deliveryOnWaySubtitle.tr,
        ),
      ],
    );
  }
}
