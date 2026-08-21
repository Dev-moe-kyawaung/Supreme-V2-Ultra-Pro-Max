import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PortfolioProvider extends ChangeNotifier {
  // Theme
  ThemeMode _themeMode = ThemeMode.system;
  ThemeMode get themeMode => _themeMode;

  // Language
  String _languageCode = 'en';
  String get languageCode => _languageCode;
  Locale get locale => Locale(_languageCode);

  // Scroll controllers for lazy loading
  final Map<String, ScrollController> _scrollControllers = {};

  PortfolioProvider() {
    _loadPreferences();
  }

  Future<void> _loadPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final isDark = prefs.getBool('isDarkMode') ?? false;
    final lang = prefs.getString('languageCode') ?? 'en';

    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    _languageCode = lang;
    notifyListeners();
  }

  void toggleTheme() async {
    final prefs = await SharedPreferences.getInstance();
    _themeMode = _themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    await prefs.setBool('isDarkMode', _themeMode == ThemeMode.dark);
    notifyListeners();
  }

  void setLanguage(String code) async {
    final prefs = await SharedPreferences.getInstance();
    _languageCode = code;
    await prefs.setString('languageCode', code);
    notifyListeners();
  }

  ScrollController getScrollController(String key) {
    return _scrollControllers.putIfAbsent(key, () => ScrollController());
  }

  @override
  void dispose() {
    for (final controller in _scrollControllers.values) {
      controller.dispose();
    }
    super.dispose();
  }
}
