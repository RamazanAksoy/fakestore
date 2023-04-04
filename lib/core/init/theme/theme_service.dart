import 'package:flutter/material.dart';
import '/core/constants/app/app_constants.dart';

import '../cache/locale_manager.dart';

class ThemeService extends ChangeNotifier {
  LocaleManager? localService = LocaleManager.instance;

  bool isSavedDarkMode() {
    return localService!.getBoolValue(ApplicationConstants.THEME);
  }

  ThemeMode getTheme() {
    return isSavedDarkMode() == true ? ThemeMode.dark : ThemeMode.light;
  }

  Future<void> setTheme(bool value) async {
    await localService!.setBoolValue(ApplicationConstants.THEME, value);
  }

  Future<void> changeTheme() async {
    isSavedDarkMode() == false ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
    await setTheme(!isSavedDarkMode());
  }
}
