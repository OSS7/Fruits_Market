import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';
import 'theme_provider.dart';

class Themes {
  static ThemeData myTheme(bool isDark, BuildContext context,) {
    final themeProvider = ThemeProvider();
    themeProvider.darkTheme = isDark;

    return ThemeData(
      primarySwatch: Colors.grey,

      primaryColor: !isDark ? darkColor : lightColor,
      backgroundColor: isDark ? darkColor : const Color(0xffF5F5F5),
      indicatorColor:
          isDark ? const Color(0xff0E1D36) : const Color(0xffCBDCF8),
      scaffoldBackgroundColor:
          isDark ? const Color(0xff31353B) : const Color(0xffFFFFFF),
      hintColor: isDark ? const Color(0xff280C0B) : const Color(0xffEECED3),
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      disabledColor: Colors.grey,
      cardColor: isDark ? const Color(0xFF151515) : Colors.white,
      canvasColor: isDark ? darkColor : Colors.grey[50],
      brightness: isDark ? Brightness.dark : Brightness.light,
      unselectedWidgetColor: primaryColor,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme:
              isDark ? const ColorScheme.dark() : const ColorScheme.light()),
      fontFamily: 'Masri Sans',
      // GoogleFonts.balooBhaijaan2().fontFamily,
      // textTheme:   ? GoogleFonts.ibmPlexSansArabicTextTheme() : GoogleFonts.interTextTheme(),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xffB12025),
        elevation: 0.0,
      ),
      iconTheme: IconThemeData(color: isDark ? lightColor : darkColor, size: 30),
    );
  }
}
