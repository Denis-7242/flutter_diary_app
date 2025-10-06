import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ThemeProvider extends ChangeNotifier {
  static const String themeBox = 'settings';
  static const String themeKey = 'isDarkMode';

  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  ThemeProvider() {
    _loadTheme();
  }

  void _loadTheme() async {
    final box = await Hive.openBox(themeBox);
    _isDarkMode = box.get(themeKey, defaultValue: true) as bool;
    notifyListeners();
  }

  void toggleTheme() async {
    _isDarkMode = !_isDarkMode;
    final box = await Hive.openBox(themeBox);
    box.put(themeKey, _isDarkMode);
    notifyListeners();
  }
}
