import 'package:flutter/material.dart';

import '../../constant/colors.dart';
import '../../utils/services/local_storage.dart';

final white = const Color(0xffFFFFFF);
final black = const Color(0xff000000);
final customWhite = const Color(0xffE1E1E1);
// final customBlack = const Color(0xffFFFFFF);
final grey = const Color(0xff43474C);
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



  Color searchTextFieldFill =
      _darkTheme ? const Color(0xff141921) : const Color(0xffE1E1E1);
  Color searchTextFieldBrder =
      _darkTheme ? const Color(0xff141921) : Colors.grey.shade300;
  Color searchTextFieldIcon = const Color(0xff949494);

  Color searchFilterBoxBorder = const Color(0xffE1E1E1);

  Color pressedRegion =
      _darkTheme ? customPrimary : primaryColor;

  Color tileItemBackColor =
      _darkTheme ? grey : white;
  Color tileItemBorderColor =
      _darkTheme ? Color(0xff43474C):Color(0xffE1E1E1);

  Color detailsEndHeaderGradient =
      _darkTheme ? white : customPrimary;

  Color detailsCustomContainerIcon =
      _darkTheme ? white : customPrimary;
  Color detailsCustomContainerBackColor =
      _darkTheme ? grey : white;
  Color detailsInfoBlockBorder =
      _darkTheme ? grey : customWhite;
  Color detailsCustomContainerBorderColor =
      _darkTheme ? const Color(0xffF1F1F1) : customWhite;
  Color detailsCategoryBackground =
      _darkTheme ? darkColor : const Color(0xffF5F5F5);
  Color detailsInfoTableHeader =
      _darkTheme ? const Color(0xff31353B) : white;
  Color detailsInfoValue =
      _darkTheme ? white : customPrimary;

  Color compareSpecificValueColor =
      _darkTheme ? white : primaryColor;
  Color compareHeaderBlock =
      _darkTheme ? const Color(0xff141921) : customWhite;
  Color compareHeaderBlockBorder =
      _darkTheme ? const Color(0xff000000) : customWhite;





  Color closeIconBackground =
      _darkTheme ? darkColor : const Color(0xffF5F5F5);

  Color contactusFieldBorderColor =
      _darkTheme ? lightColor : const Color(0xffACACAC);

  Color cupertinoPickerBackground = _darkTheme ? darkColor : Colors.white;

}
