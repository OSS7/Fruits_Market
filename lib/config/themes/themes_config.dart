import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constant/colors.dart';

class MyThemeData {
  static const _medium = FontWeight.w500;
  static const _semiBold = FontWeight.w600;
  static const _bold = FontWeight.w700;
  static const _regular = FontWeight.w400;

  static ThemeData myTheme(bool isDark, BuildContext context) {
    var _lightScheme = ColorScheme.light(
      primary: Colors.white,
      onPrimary: darkColor,
      secondary: primaryColor,
      onSecondary: Colors.black,
      // onPrimaryContainer: customLightColor,
    );
    var _darkScheme = ColorScheme.dark(
      primary: darkColor,
      onPrimary: Colors.white,
      secondary: Colors.white,
      onSecondary: Colors.white,
      // onPrimaryContainer: customBlack,
    );
    // final themeProvider = ThemeProvider();
    // themeProvider.darkTheme = isDark;

    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: primaryColor,
      indicatorColor:
          isDark ? const Color(0xff0E1D36) : const Color(0xffCBDCF8),
      scaffoldBackgroundColor: lightColor,
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
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xffB12025),
        elevation: 0.0,
      ),
      iconTheme:
          IconThemeData(color: isDark ? lightColor : darkColor, size: 30),
      textTheme: TextTheme(
        headlineMedium:
            GoogleFonts.montserrat(fontWeight: _bold, fontSize: 20.0),
        bodySmall: GoogleFonts.oswald(fontWeight: _semiBold, fontSize: 16.0),
        headlineSmall: GoogleFonts.oswald(fontWeight: _medium, fontSize: 16.0),
        titleMedium:
            GoogleFonts.montserrat(fontWeight: _medium, fontSize: 16.0),
        labelSmall: GoogleFonts.montserrat(fontWeight: _medium, fontSize: 12.0),
        bodyLarge: GoogleFonts.montserrat(fontWeight: _regular, fontSize: 14.0),
        titleSmall: GoogleFonts.montserrat(fontWeight: _medium, fontSize: 14.0),
        bodyMedium:
            GoogleFonts.montserrat(fontWeight: _regular, fontSize: 16.0),
        titleLarge: GoogleFonts.montserrat(fontWeight: _bold, fontSize: 16.0),
        labelLarge:
            GoogleFonts.montserrat(fontWeight: _semiBold, fontSize: 14.0),
      ),

      //   static const _regular = FontWeight.w400;
    );
  }
}

// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// class MyThemeData {
//   static const _lightFillColor = Colors.black;
//   static const _darkFillColor = Colors.white;
//
//   static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
//   static final Color _darkFocusColor = Colors.white.withOpacity(0.12);
//
//   static ThemeData lightThemeData =
//   themeData(lightColorScheme, _lightFocusColor);
//   static ThemeData darkThemeData = themeData(darkColorScheme, _darkFocusColor);
//
//   static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
//     return ThemeData(
//       colorScheme: colorScheme,
//       textTheme: _textTheme,
//       appBarTheme: AppBarTheme(
//         backgroundColor: colorScheme.background,
//         elevation: 0,
//         iconTheme: IconThemeData(color: colorScheme.primary),
//       ),
//       iconTheme: IconThemeData(color: colorScheme.onPrimary),
//       canvasColor: colorScheme.background,
//       scaffoldBackgroundColor: colorScheme.background,
//       highlightColor: Colors.transparent,
//       focusColor: focusColor,
//       snackBarTheme: SnackBarThemeData(
//         behavior: SnackBarBehavior.floating,
//         backgroundColor: Color.alphaBlend(
//           _lightFillColor.withOpacity(0.80),
//           _darkFillColor,
//         ),
//         contentTextStyle: _textTheme.titleMedium!.apply(color: _darkFillColor),
//       ),
//     );
//   }
//
//   static const ColorScheme lightColorScheme = ColorScheme(
//     primary: Color(0xFFB93C5D),
//     primaryContainer: Color(0xFF117378),
//     secondary: Color(0xFFEFF3F3),
//     secondaryContainer: Color(0xFFFAFBFB),
//     background: Color(0xFFE6EBEB),
//     surface: Color(0xFFFAFBFB),
//     onBackground: Colors.white,
//     error: _lightFillColor,
//     onError: _lightFillColor,
//     onPrimary: _lightFillColor,
//     onSecondary: Color(0xFF322942),
//     onSurface: Color(0xFF241E30),
//     brightness: Brightness.light,
//   );
//
//   static const ColorScheme darkColorScheme = ColorScheme(
//     primary: Color(0xFFFF8383),
//     primaryContainer: Color(0xFF1CDEC9),
//     secondary: Color(0xFF4D1F7C),
//     secondaryContainer: Color(0xFF451B6F),
//     background: Color(0xFF241E30),
//     surface: Color(0xFF1F1929),
//     onBackground: Color(0x0DFFFFFF), // White with 0.05 opacity
//     error: _darkFillColor,
//     onError: _darkFillColor,
//     onPrimary: _darkFillColor,
//     onSecondary: _darkFillColor,
//     onSurface: _darkFillColor,
//     brightness: Brightness.dark,
//   );
//
//   static const _regular = FontWeight.w400;
//   static const _medium = FontWeight.w500;
//   static const _semiBold = FontWeight.w600;
//   static const _bold = FontWeight.w700;
//
//   static final TextTheme _textTheme = TextTheme(
// headlineMedium: GoogleFonts.montserrat(fontWeight: _bold, fontSize: 20.0),
// bodySmall: GoogleFonts.oswald(fontWeight: _semiBold, fontSize: 16.0),
// headlineSmall: GoogleFonts.oswald(fontWeight: _medium, fontSize: 16.0),
// titleMedium: GoogleFonts.montserrat(fontWeight: _medium, fontSize: 16.0),
// labelSmall: GoogleFonts.montserrat(fontWeight: _medium, fontSize: 12.0),
// bodyLarge: GoogleFonts.montserrat(fontWeight: _regular, fontSize: 14.0),
// titleSmall: GoogleFonts.montserrat(fontWeight: _medium, fontSize: 14.0),
// bodyMedium: GoogleFonts.montserrat(fontWeight: _regular, fontSize: 16.0),
// titleLarge: GoogleFonts.montserrat(fontWeight: _bold, fontSize: 16.0),
// labelLarge: GoogleFonts.montserrat(fontWeight: _semiBold, fontSize: 14.0),
//   );
// }
