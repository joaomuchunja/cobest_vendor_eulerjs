import 'package:flutter/material.dart';

// Cores baseadas no logo da Cobest
Color _primaryColor = const Color(0xFFD2691E); // Laranja do logo
Color _secondaryColor = const Color(0xFF4A4A4A); // Cinza escuro do logo

ThemeData dark = ThemeData(
  fontFamily: 'TitilliumWeb',
  primaryColor: _primaryColor,
  brightness: Brightness.dark,
  bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.transparent),
  highlightColor: const Color(0xFF252525),
  hintColor: const Color(0xFFc7c7c7),
  cardColor: const Color(0xFF333333),

  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Color(0xFFE9EEF4)),  // Text color primary
    bodyMedium: TextStyle(color: Color(0xFFE9EEF4)), // Text color Secondary
    bodySmall: TextStyle(color: Color(0xFFE9EEF4)),  // Text color Light grey
    headlineMedium: TextStyle(color: Color(0xFFA0A0A0)),
    headlineLarge: TextStyle(color: Color(0xFF656566)),
  ),

  colorScheme: ColorScheme.dark(
    primary: _primaryColor,  // Laranja Cobest
    secondary: _secondaryColor,  // Cinza escuro Cobest
    tertiary: const Color(0xFFFFBB38), // Warning Color
    tertiaryContainer: const Color(0xFF6C7A8E),
    onTertiaryContainer: const Color(0xFF04BB7B), // Success Color
    primaryContainer: const Color(0xFF8B4513), // Versão mais escura do laranja
    secondaryContainer: const Color(0xFF3A3A3A), // Cinza mais claro que o secondary
    surface: const Color(0xFF242424),
    outline: const Color(0xFFD2691E), // Info Color / Pending color - laranja Cobest
    surfaceTint: const Color(0xFFD2691E), // Laranja Cobest
    onPrimary: const Color(0xFFFFE4CC), // Versão clara do laranja para contraste
    onSecondary: const Color(0xFFE85A00), // Versão mais escura do laranja
    error: const Color(0xFFFF4040), // Danger Color
  ),

  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: ZoomPageTransitionsBuilder(),
    TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
    TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
  }),
);