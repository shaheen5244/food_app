import 'package:flutter/material.dart';
import 'package:food_app/themes/dark_mode.dart';
import 'package:food_app/themes/light_mode.dart';

class ThemeProvider with ChangeNotifier{
  ThemeData_themeData = lightMode;

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkMode;

  set themData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme(){
    if (_themeData == lightMode) {
      themeData = darkMode;
    }
    else {
      themeData = lightMode;
    }
  }
}