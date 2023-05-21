import 'package:fruits_market/features/cart/cart_view.dart';
import 'package:fruits_market/features/fruit/fruit_details/fruit_details_view.dart';
import 'package:get/get.dart';

import '../../features/on_boarding/presentation/on_boarding_view.dart';
import '../core/constant/routes.dart';
import '../features/fruit/fruits/fruits_view.dart';

// import '../constant/routes.dart' as routes;

///a functions used to define routes
///
/// such as in case /home navigate  me to HomeScreen
/// the actual routes string will be in [ /core/constant/routes.dart ]
///
final isLTR = Get.locale?.languageCode.contains('en') ?? true;
List<GetPage> getPages = [
  GetPage(
    name: MyRoutes.ON_BOARDING,
    page: () => const OnBoardingView(),
    transition: Transition.upToDown,
  ),
  GetPage(
    name: MyRoutes.FRUITS,
    page: () => const FruitsView(),
    transition: Transition.upToDown,
  ),
  GetPage(
    name: MyRoutes.FRUIT_DETAILS,
    page: () => const FruitDetailsView(),
    transition: Transition.upToDown,
  ),
  GetPage(
    name: MyRoutes.CART,
    page: () => const CartView(),
    transition: Transition.upToDown,
  ),
];

/// If you write wrong route will  display page with error message
