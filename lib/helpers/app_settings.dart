import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vsongbook/utils/constants.dart';

class AppSettings extends ChangeNotifier {
  
  final SharedPreferences _pref;

  AppSettings(this._pref);

  bool get isDarkMode => _pref?.getBool(SharedPreferenceKeys.darkMode) ?? false;

  void setDarkMode(bool val) {
    _pref?.setBool(SharedPreferenceKeys.darkMode, val);
    notifyListeners();
  }

  void switchDarkMode() {
    bool val = isDarkMode;
    if (isDarkMode)
      val = false;
    else
      val = true;
    _pref?.setBool(SharedPreferenceKeys.darkMode, val);
    notifyListeners();
  }
}
