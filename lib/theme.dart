import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static const _primaryColorLight = Colors.lightBlueAccent;
  static const _primaryColorDark = Colors.lightGreenAccent;
  //we created a instance of themeData
  static final ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: _primaryColorLight,
        brightness: Brightness.light,
      ));
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: _primaryColorDark,
      brightness: Brightness.dark,
    ),
  );
}
