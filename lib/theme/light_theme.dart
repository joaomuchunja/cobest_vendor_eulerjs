import 'package:flutter/material.dart';

// Cores baseadas no logo da Cobest
Color _primaryColor = const Color(0xFFD2691E); // Laranja do logo
Color _secondaryColor = const Color(0xFF4A4A4A); // Cinza escuro do logo

ThemeData light = ThemeData(
  fontFamily: 'TitilliumWeb',
  primaryColor: _primaryColor,
  bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.transparent),
  brightness: Brightness.light,
  highlightColor: Colors.white,
  hintColor: const Color(0xFFA7A7A7),
  disabledColor: const Color(0xFF343A40),
  canvasColor: const Color(0xFFFCFCFC),
  cardColor: const Color(0xFFFFFFFF),
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: const Color(0xFFF7F8FA),

  textTheme: TextTheme(
    bodyLarge: const TextStyle(color: Color(0xFF222324)),  // Text color primary
    bodyMedium: TextStyle(color: _primaryColor), // Text color Secondary - usando laranja Cobest
    bodySmall: const TextStyle(color: Color(0xFFA7A7A7)),  // Text color Light grey
    headlineMedium: const TextStyle(color: Color(0xFFA0A0A0)),
    headlineLarge: const TextStyle(color: Color(0xFF656566)),
  ),

  colorScheme: ColorScheme.light(
    primary: _primaryColor,  // Laranja Cobest
    secondary: _secondaryColor,  // Cinza escuro Cobest
    error: const Color(0xFFFF5A5A),
    tertiary: const Color(0xFFFFBB38), // Warning Color
    tertiaryContainer: const Color(0xFFFFE4CC), // Container laranja claro
    onTertiaryContainer: const Color(0xFF04BB7B), // Success Color
    primaryContainer: const Color(0xFFFFE4CC), // Container laranja claro
    secondaryContainer: const Color(0xFFF2F2F2),
    surface: const Color(0xFFFFFFFF),
    surfaceTint: const Color(0xFFD2691E), // Usando laranja Cobest
    onPrimary: const Color(0xFFFFE4CC), // Versão clara do laranja
    onSecondary: const Color(0xFFE85A00), // Versão mais escura do laranja
    outline: const Color(0xFFD2691E), // Info Color / Pending color - laranja Cobest
  ),

  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: ZoomPageTransitionsBuilder(),
    TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
    TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
  }),
);