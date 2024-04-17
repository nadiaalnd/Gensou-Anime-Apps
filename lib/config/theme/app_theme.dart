import 'package:flutter/material.dart';

class AppTheme {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.blueGrey.shade900,
    primaryColor: Colors.white,
    shadowColor: Colors.black54,
    iconTheme: const IconThemeData(color: Colors.white),
    primaryIconTheme: const IconThemeData(
      color: Colors.white,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        backgroundColor: Colors.black,
        color: Colors.white,
      ),
    ),
    colorScheme: const ColorScheme.dark()
        .copyWith(secondary: Colors.grey.shade900)
        .copyWith(background: Colors.black),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
      selectedIconTheme: IconThemeData(
        color: Colors.white,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.white70,
      ),
    ),
  );
}
