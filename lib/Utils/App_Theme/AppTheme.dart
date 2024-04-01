import 'package:flutter/material.dart';

class AppTheme{
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Color.fromARGB(255,226, 226, 226),
    colorScheme: const ColorScheme(
        brightness: Brightness.light,
        background: Color.fromARGB(255,226, 226, 226),
        onBackground: Colors.black,
        primary: Colors.white,
        onPrimary: Colors.black,
        secondary: Colors.white60,
        onSecondary: Colors.black,
        error: Colors.white,
        onError: Colors.redAccent,
        surface: Colors.white,
        onSurface:Colors.black,
      shadow: Color.fromARGB(255, 210, 210, 210),
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: Colors.white70,
    )
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        background: Colors.black,
        onBackground: Colors.white,
        primary: Colors.black,
        onPrimary: Colors.white,
        secondary: Colors.black26,
        onSecondary: Colors.white,
        error: Colors.white,
        onError: Colors.redAccent,
        surface: Color.fromARGB(255, 40, 40, 40),
        onSurface:Colors.white,
      shadow: Colors.white10,
    ),
      drawerTheme: const DrawerThemeData(
        backgroundColor: Colors.black87,
      )
  );
}