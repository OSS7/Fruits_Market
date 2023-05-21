import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_market/features/fruit/fruits/bloc/fruits_bloc.dart';
import 'package:get/get.dart';

import 'config/route_config.dart' as Routes;
import 'config/themes/themes_config.dart';
import 'core/constant/colors.dart';
import 'core/constant/routes.dart';
import 'core/utils/services/local_storage.dart';
import 'features/cart/bloc/cart_bloc.dart';
import 'features/cart/cart_view.dart';
import 'features/fruit/fruits/fruits_view.dart';
import 'features/profile/profile_view.dart';
import 'features/splash/splash_view.dart';

void main() {
  LocalStorage.init();
  runApp(FruitsMarket());
}

class FruitsMarket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => CartBloc(),
        ),
        BlocProvider(
          create: (BuildContext context) => FruitsBloc(),
        ),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        getPages: Routes.getPages,
        initialRoute: MyRoutes.HOME,
        themeMode: ThemeMode.light,
        theme: MyThemeData.myTheme(false, context),
        // darkTheme: _darkTheme,
        home: const SplashView(),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List pages = const [
    FruitsView(),
    CartView(),
    ProfileView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_sharp),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Settings',
          ),
        ],
        backgroundColor: whiteColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: primaryColor,
        unselectedItemColor: darkColor.withOpacity(0.2),
      ),
    );
  }
}
