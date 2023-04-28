import 'package:flutter/material.dart';

import '../../constant/colors.dart';
import '../../utils/services/local_storage.dart';

const white = Color(0xffFFFFFF);
const black = Color(0xff000000);
const customWhite = Color(0xffE1E1E1);
// final customBlack = const Color(0xffFFFFFF);
const grey = Color(0xff43474C);
final customPrimary = primaryColor;
// final grey = const Color(0xff43474C);

/// a provider class responsible for mangae colors and theme
/// like if a button was a red in dark mode and blue in light mode
/// we defined every single widget that it's color will be change between light and dark mode
class ThemeProvider extends ChangeNotifier {
  static bool _darkTheme = true;
  bool get darkTheme => _darkTheme;
  set darkTheme(bool value) {
    _darkTheme = value;
    LocalStorage.setThemeIsDark(value);
    notifyListeners();
  }

  ///Custom Colors

  Color primary = _darkTheme ? Colors.black : Colors.white;
  Color secondary = _darkTheme ? Colors.white : Colors.black;

  Color kPrimary = _darkTheme ? darkColor : Colors.white;
  Color kSecondary = _darkTheme ? Colors.white : darkColor;

}
