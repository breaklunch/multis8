import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 240, 88, 88);
  static final ThemeData modoClaro = ThemeData(
      primaryColor: primary,
      //Appbar Theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      cardTheme: const CardTheme(shadowColor: primary),
      // cardTheme: CardTheme(shadowColor: primary.withOpacity(0.5)),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)),
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primary),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: primary,
              shape: const StadiumBorder(),
              elevation: 8,
              shadowColor: primary)));
  static final ThemeData modoOscuro = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      iconTheme: const IconThemeData(color: primary));
}
