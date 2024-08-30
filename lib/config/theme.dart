import 'package:flutter/material.dart';

class AppTheme {
  static const Color backgorund = Color.fromARGB(255, 36, 36, 36);

  static const Color textColor = Colors.white;

  static const Color styleColor = Color.fromARGB(255, 110, 202, 113);

  static ThemeData theme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: backgorund,
      // centerTitle: true,
      titleTextStyle: TextStyle(
        color: textColor,
        fontSize: 20,
      ),
    ),
    scaffoldBackgroundColor: backgorund,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: textColor),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      //? TextFormField decoration
      helperMaxLines: 1,
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: styleColor),
      ),
    ),
    elevatedButtonTheme: const ElevatedButtonThemeData(
      //? ElevatedButton decoration
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(styleColor),
        foregroundColor: WidgetStatePropertyAll(Colors.white),
        textStyle: WidgetStatePropertyAll<TextStyle>(
          TextStyle(fontSize: 25, color: Colors.black),
        ),
      ),
    ),
  );

  static TextStyle resultStyle = const TextStyle(
    color: Colors.white,
    fontSize: 23,
    fontWeight: FontWeight.bold,
  );
}
