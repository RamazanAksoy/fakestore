import 'package:flutter/material.dart';
import 'colors.dart';

class Themes {
  static final darkTheme = ThemeData.dark().copyWith(
      primaryColor: const Color.fromARGB(255, 255, 255, 255),
      appBarTheme: const AppBarTheme(backgroundColor: Color.fromARGB(255, 109, 0, 217)),
      scaffoldBackgroundColor: Colors.black);

  static final lightTheme = ThemeData.light().copyWith(
    primaryColor: AppColors.themeColor,
    colorScheme: const ColorScheme.light(primary: AppColors.themeColor),
    scaffoldBackgroundColor: Colors.white,
    buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
    appBarTheme: const AppBarTheme(backgroundColor: Color.fromARGB(255, 255, 0, 0)),
  );
}
