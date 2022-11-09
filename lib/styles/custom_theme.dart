import 'package:flutter/material.dart';

class CustomTheme {
  var theme = ThemeData(
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: Color(0xfff25723)),
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
            foregroundColor:
                MaterialStateProperty.all<Color>(const Color(0xfff25723)))),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          const Color(0xfff25723),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
    ),
    appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
  );
}
