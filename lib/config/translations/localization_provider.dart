import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/utils/services/local_storage.dart';

///a provider class that responsible for localization direction.
///like if a widget was in left of screen if the language is arabic, and it will be in the right if the language is english.
String? currentLang() {
  return Get.locale?.languageCode.toString() == 'fa'
      ? 'fr'
      : Get.locale?.languageCode.toString();
}

class LocalizationProvider extends ChangeNotifier {
  bool? isLTR = Get.locale?.languageCode != 'en';

  initialLocalization() {
    isLTR = Get.locale?.languageCode != 'en';
  }

  changeLocalization(String newLocal) {
    final currentLocal = Get.locale;
    if (currentLocal != Locale(newLocal)) {
      LocalStorage.setCurrentLanguage(newLocal);
      Get.updateLocale(Locale(newLocal));
    }

    // currentLocal == Locale(newLocal)
    //     ? Get.updateLocale(Locale(newLocal))
    //     : null;
    isLTR = Get.locale?.languageCode != 'en' ? false : true;

    notifyListeners();
  }
}
