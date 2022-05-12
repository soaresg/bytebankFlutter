import 'package:flutter/material.dart';

final byteBankTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: Colors.green[700],
    secondary: Colors.blueAccent[700],
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.blueAccent[700],
    ),
  ),
);
