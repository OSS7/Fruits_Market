import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/utils/services/local_storage.dart';
import 'languages/ar_language.dart';
import 'languages/en_language.dart';

/// a class extends from [Translations] => GetX package
/// responsible for many thing
/// such as:
/// * Changing localization.
/// * Provide Which font is support for specific language
/// *  Update localization.
/// * Read and Write  user localization  in Local storage.
class LocalizationService extends Translations {
  // default language
  static Locale defaultLanguage = supportedLanguages['en']!;

  // supported languages
  static Map<String, Locale> supportedLanguages = {
    'en': const Locale('en', 'US'),
    'ar': const Locale('ar', 'AE'),
    'fa': const Locale('fa', 'IR'),
  };

  // supported languages fonts family (must be in assets & pubspec yaml) or you can use google fonts
  // static Map<String, TextStyle> supportedLanguagesFontsFamilies = {
  //   'en': const TextStyle(fontFamily: 'Inter'),
  //   'ar': const TextStyle(fontFamily: 'Inter'),
  //   'fa': const TextStyle(fontFamily: 'Inter',),
  // };

  @override
  Map<String, Map<String, String>> get keys => {
        'en': englishLanguage,
        'ar': arabicLanguage,
      };

  /// check if the language is supported
  static bool isLanguageSupported(String languageCode) =>
      supportedLanguages.keys.contains(languageCode);

  /// update app language by code language for example (en,ar..etc)
  static updateLanguage(String languageCode) async {
    // check if the language is supported
    if (!isLanguageSupported(languageCode)) {
      return;
    }

    // update current language in shared pref
    LocalStorage.setCurrentLanguage(languageCode);
    await Get.updateLocale(supportedLanguages[languageCode]!);
  }

  /// check if the language is english
  static bool isItEnglish() =>
      LocalStorage.getCurrentLocal()!.languageCode.toLowerCase().contains('en');

  /// get current locale
  static String? getCurrentLocal() =>
      Get.locale?.languageCode.toString() == 'fa'
          ? 'fr'
          : Get.locale?.languageCode.toString();
}
