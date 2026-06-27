import 'package:flutter/material.dart';
import '../services/shared_pref_service.dart';

class ThemeProvider extends ChangeNotifier {

  bool _isDark = false;

  bool get isDark => _isDark;

  ThemeProvider() {
    loadTheme();
  }

  Future<void> loadTheme() async {
    _isDark = await SharePreService.getTheme();
    notifyListeners();
  }

  Future<void> toggleTheme(bool value) async {
    _isDark = value;

    await SharePreService.saveTheme(value);

    notifyListeners();
  }
}