import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cobes_marketplace_vendor/utill/app_constants.dart';

class ThemeController with ChangeNotifier {
  final SharedPreferences? sharedPreferences;
  ThemeController({required this.sharedPreferences}) {
    _loadCurrentTheme();
  }

  bool _darkTheme = true;
  bool get darkTheme => _darkTheme;

  void toggleTheme() {
    _darkTheme = !_darkTheme;
    sharedPreferences!.setBool(AppConstants.theme, _darkTheme);
    notifyListeners();
  }

  void _loadCurrentTheme() async {
    _darkTheme = sharedPreferences!.getBool(AppConstants.theme) ?? false;
    notifyListeners();
  }

  // Cores padrão baseadas no logo da Cobest para o app vendor
  static const Color cobestOrange = Color(0xFFD2691E); // Laranja Cobest
  static const Color cobestGray = Color(0xFF4A4A4A); // Cinza escuro Cobest

  // Método para obter as cores da Cobest
  Color get primaryColor => cobestOrange;
  Color get secondaryColor => cobestGray;

  // Cores derivadas para diferentes tons
  Color get lightOrange => const Color(0xFFFFE4CC);
  Color get darkOrange => const Color(0xFF8B4513);
  Color get accentOrange => const Color(0xFFE85A00);
}