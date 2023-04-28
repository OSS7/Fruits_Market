import 'package:flutter/material.dart';
import 'package:fruits_market/features/splash/splash_view.dart';
import 'package:fruits_market/features/auth/login/login_page.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'core/config/route_config.dart' as Route;
import 'core/constant/routes.dart';
import 'core/utils/services/local_storage.dart';
import 'features/fruit/fruits/fruits_view.dart';

void main() {
  LocalStorage.init();
  runApp(FruitsMarket());
}

ThemeData _darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.amber,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.amber,
      disabledColor: Colors.grey,
    ));

ThemeData _lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.blue,
      disabledColor: Colors.grey,
    ));

class FruitsMarket extends StatelessWidget {
  final RxBool _isLightTheme = false.obs;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: Route.getPages,
      initialRoute: MyRoutes.HOME,
      themeMode: ThemeMode.light,
      theme: _lightTheme,
      darkTheme: _darkTheme,
      home: const FruitsView(),
    );
  }
}
