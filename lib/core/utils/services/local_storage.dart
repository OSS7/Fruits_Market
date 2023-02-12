import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import '../../config/translations/localization_services.dart';

class LocalStorage {
  // get storage
  static late GetStorage _storage;

  // STORING KEYS
  static const String _fcmTokenKey = '_fcm_token_';
  static const String _currentLocalKey = '_locale_';
  static const String _lightThemeKey = '_is_theme_dark_';
  static const String _favoriteFruits = '_favorite_fruits_';
  static const String _filterMap = '_filter_map_';
  static const String _welcome = '_welcome_';

  // init get storage services
  static init() async {
    await GetStorage.init();
    _storage = GetStorage();
  }
  final box = GetStorage();

  /// set theme current type as light theme
  static void setThemeIsDark(bool lightTheme) =>
      _storage.write(_lightThemeKey, lightTheme);

  /// get if the current theme type is light
  static bool? getThemeIsDark() =>
      (_storage.read(_lightThemeKey) ?? true) as bool;

  /// set theme current type as light theme
  static void setIsFirstTime(String key) => _storage.write(key, false);

  /// get if the current theme type is light
  static bool? getIsFirstTime(String key) =>
      (_storage.read(key) ?? true) as bool;

  /// save current locale
  static void setCurrentLanguage(String languageCode) =>
      _storage.write(_currentLocalKey, languageCode);

  /// get current locale
  static Locale? getCurrentLocal() {
    String? langCode = (_storage.read(_currentLocalKey) ?? 'en') as String;

    // default language is english
    if (langCode.isEmpty) {
      return LocalizationService.defaultLanguage;
    }

    return LocalizationService.supportedLanguages[langCode];
  }

  static void setFavoriteFruits(String fruits) =>
      _storage.write(_favoriteFruits, fruits);

  static String? getFavoriteFruits() {
    return _storage.read(_favoriteFruits) == null
        ? null
        : _storage.read(_favoriteFruits).toString();
  }

  static setLocal(String key, dynamic value) => _storage.write(key, value);

  static getLocal(String key) => _storage.read(key);

  static clearLocalValue(String key) => _storage.remove(key);
}
